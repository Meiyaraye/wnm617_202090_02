
const RecentPage = async() => {

   let d = await query({
      type:'recent_locations',
      params:[sessionStorage.userId]
   });

   console.log(d)

   let valid_animals = d.result.reduce((r,o)=>{
      o.icon = o.img;
      if(o.lat && o.lng) r.push(o);
      return r;
   },[])


   let map_el = await makeMap("#recent-page .map");

   //console.log(map_el.data('map'))

   makeMarkers(map_el,valid_animals);

}





// async and await
const ListPage = async() => {
   let d = await query({
      type:'animals_by_user_id',
      params:[sessionStorage.userId]
   });

   console.log(d)

   $("#list-page .animallist")
      .html(makeAnimalList(d.result));
}






const UserProfilePage = async() => {
   let d = await query({
      type:'user_by_id',
      params:[sessionStorage.userId]
   });

   console.log(d)

   $("#user-profile-page .profile")
      .html(makeUserProfile(d.result));

/*

 query({
      type:'user_by_id',
      params:[sessionStorage.animalId]
   }).then(d=>{
      makeMap("#user-profile-page .map").then(map_el=>{
         makeMarkers(map_el,d.result);
      })
   })

*/


      
}







const AnimalProfilePage = async() => {
   query({
      type:'animal_by_id',
      params:[sessionStorage.animalId]
   }).then(d=>{
      console.log(d)

      $("#animal-profile-page .profile")
         .html(makeAnimalProfile(d.result));
   });

   query({
      type:'locations_by_animal_id',
      params:[sessionStorage.animalId]
   }).then(d=>{
      makeMap("#animal-profile-page .map").then(map_el=>{
         makeMarkers(map_el,d.result);
      })
   })
   
}



/*

jQuery(document).ready(function($){
function initMap() {
  var mapid = 'map-2';
  var map = WPViews.view_addon_maps.get_map(mapid);
  var markers = WPViews.view_addon_maps.markers[mapid];
  if(markers.length == 0)
    return;
  var tripCoordinates = [];
  var latLng;
  // loop over all the markers and create an array of lat lng objects
  for(var marker in markers){
    latLng = {
      'lat':markers[marker].position.lat(),
      'lng':markers[marker].position.lng()
    };
    tripCoordinates.push(latLng);
  }
  // create a new polyline using the coordinates array, and add it to the map
  var tripPath = new google.maps.Polyline({
    path: tripCoordinates,
    geodesic: true,
    strokeColor: '#FF0000',
    strokeOpacity: 1.0,
    strokeWeight: 2
  });
  tripPath.setMap(map);
} 
$( document ).on('js_event_wpv_addon_maps_init_map_completed', function( event, event_settings ) {
initMap();
} );
   
} );

*/
