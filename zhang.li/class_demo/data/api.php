<?php


function makeConn() {
   include_once "auth.php";
   try {
      $conn = new PDO(...Auth());
      $conn->setAttribute(
         PDO::ATTR_ERRMODE,
         PDO::ERRMODE_EXCEPTION
      );
   } catch(PDOException $e) {
      die($e->getMessage());
   }
   return $conn;
}


function fetchAll($r) {
   $a = [];
   while($row = $r->fetch(PDO::FETCH_OBJ))
      $a[] = $row;
   return $a;
}


// connection, prepared statement, parameters
function makeQuery($c,$ps,$p) {
   try {
      if(count($p)) {
         $stmt = $c->prepare($ps);
         $stmt->execute($p);
      } else {
         $stmt = $c->query($ps);
      }

      $r = fetchAll($stmt);

      return [
         "result"=>$r
      ];

   } catch(PDOException $e) {
      return [
         "error"=>"Query Failed: ".$e->getMessage()
      ];
   }
}
/*
echo json_encode(
   makeQuery(
      makeConn(),
      "SELECT * FROM track_animals_demo WHERE type = ? AND breed = ?",
      ['cat','calico']
   ),
   JSON_NUMERIC_CHECK
);
*/

function makeStatement($data) {
   $c = makeConn();
   $t = @$data->type;
   $p = @$data->params;

   switch($t) {
      case "users_all":
         return makeQuery($c,"SELECT * FROM track_users_demo",[]);
      case "animals_all":
         return makeQuery($c,"SELECT * FROM track_animals_demo",[]);
      case "locations_all":
         return makeQuery($c,"SELECT * FROM track_locations_demo",[]);
     
      case "user_by_id":
         return makeQuery($c,"SELECT * FROM track_users_demo WHERE id = ?",$p);
      case "animal_by_id":
         return makeQuery($c,"SELECT * FROM track_animals_demo WHERE id = ?",$p);
      case "location_by_id":
         return makeQuery($c,"SELECT * FROM track_locations_demo WHERE id = ?",$p);


      case "animals_by_user_id":
         return makeQuery($c,"SELECT * FROM track_animals_demo WHERE user_id = ?",$p);
      case "locations_by_animal_id":
         return makeQuery($c,"SELECT * FROM track_locations_demo WHERE animal_id = ?",$p);

       case "check_signin":
         return makeQuery($c,"SELECT * FROM track_users_demo WHERE username = ? AND password = md5(?)",$p);


      default: return ["error"=>"No Matched type"];
   }
}




$data = json_decode(file_get_contents("php://input"));


echo json_encode(
   makeStatement($data),
   JSON_NUMERIC_CHECK
);






