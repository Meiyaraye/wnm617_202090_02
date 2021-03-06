
const drawAnimalList = (a,empty_phrase='Please add an animal.') => {
   $("#list-page .animallist")
      .html(a.length?makeAnimalList(a):empty_phrase);
}


const makeAnimalList = templater(o=>`
   <div class="animallist-item js-animal-jump" data-id="${o.id}">
                  <div class="animallist-image">
                     <img src="${o.img}" alt="" class="profile-image">
                  </div>
                  <div class="animallist-description">
                     <div class="animallist-name">${o.name}</div>
                     <div class="animallist-type"><strong>Color: </strong>${o.color}</div>
                     <div class="animallist-breed"><strong>Breed: </strong> ${o.breed}</div>
                  </div>
   </div>
`);



const makeUserProfile = templater(o=>`
   <div class="display-flex user-profile-card space-around" >
            <div class="profile-image flex-none">
               <img src="${o.img}" alt="" class="profile-image">
            </div>
  
           <div class="user-detail flex-stretch">
               <h2 id="user-name">${o.name}</h2>
               <p id="user-location">Location: ${o.location}</p>
             </div>    

           <div class="flex-stretch" id="set_icon">
           <a href="#settings-page" >
               <img src="img/setting.svg" alt="add" class="icon" width="40px">
            </a>
          </div>
         </div>
        
         <div class="user-profile-detail">

         <h4 id="my-information">My Information:</h4>

            <p><span>Name:</span> ${o.name}</p>
            <p><span>Location:</span> ${o.location}</p>
            <p><span>Gender:</span> ${o.gender}</p>
            <p><span>Email:</span> ${o.email}</p>
            <p><span>Favorite dog:</span> ${o.favorite_dog}</p>

       <br>

<h4 id="my-information">How many dog types I found?</h4>
<div class="profile-dog-type">
   <div class="display-flex">
      <div class="flex-stretch profile-dog-types">
         <a href="#list-page">
            <div class="dog-type-label">Dog Types Found</div>
            <div class="dog-number animals-added">${o.length}</div>
         </a>
      </div>
   </div>
</div>

         
         </div>
`);







const makeAnimalProfile = templater(o=>`

        
<div class="profile-image">
   <img src="${o.img}" alt="" >
</div>

         <div class="profile-bottom" style="flex:1;position:relative;overflow:hidden">
           
               <h3>Name: ${o.name}</h3>
               <p>Color: ${o.color}</p>
               <p>Breed: ${o.breed}</p>
               <p>Location: ${o.location}</p>
               <h4>Note:</h4>

              <p > ${o.description}</p>    

            </div>
 
    <div>
      <a href="#" class="form-button js-animal-delete" data-id="${o.id}">Delete</a>
   </div>



`);

const makeAnimalPopup = o=>`
<div class="display-flex">
<div>
   <img src="${o.img}" alt="" style="width:100px;height:100px">
</div>
<div style="padding-left:1em">
   <div class="profile-name">${o.name}</div>
   <div><strong>Color</strong>: ${o.color}</div>
   <div><strong>Breed</strong>: ${o.breed}</div>
</div>
</div>
<div> </div>
<div>
<a href="#" class="form-button js-animal-jump" data-id="${o.animal_id}">Visit</a> 
</div>
`;



const FormControl = ({namespace,name,displayname,type,placeholder,textarea,value}) => {
   return `<div class="form-control">
      <label for="${namespace}-${name}" class="form-label">${displayname}</label>
      <input id="${namespace}-${name}" type="${type}" class="form-input" data-role="none" placeholder="${placeholder}" textarea="${textarea}" value="${value}">
   </div>`; 
}



const makeAnimalEditForm = o => `

<div>
   <input type="hidden" id="animal-edit-image" value="${o.img}">
   <label class="image-uploader thumbnail picked" style="background-image:url('${o.img}')">
      <input type="file" data-role="none" id="animal-edit-upload">
   </label>
</div>


${FormControl({
   namespace:"animal-edit",
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Type An Animal Name",
   value:o.name
})}
${FormControl({
   namespace:"animal-edit",
   name:"color",
   displayname:"Color",
   type:"text",
   placeholder:"Choose An Animal Color",
   value:o.color
})}
${FormControl({
   namespace:"animal-edit",
   name:"breed",
   displayname:"Breed",
   type:"text",
   placeholder:"Type An Animal Breed",
   value:o.breed
})}
${FormControl({
   namespace:"animal-edit",
   name:"location",
   displayname:"Location",
   type:"text",
   placeholder:"Type An Animal Location",
   value:o.location
})}
<div class="form-control">
   <label for="animal-edit-description" class="form-label">Description</label>
   <textarea id="animal-edit-description" class="form-input" data-role="none" placeholder="Type animal description">${o.description}</textarea>
</div>

`;


const makeUserEditForm = o => `
<div>
   <input type="hidden" id="user-edit-image" value="${o.img}">
   <label class="image-uploader thumbnail picked" style="background-image:url('${o.img}')">
      <input type="file" data-role="none" id="user-edit-upload">
   </label>
</div>


${FormControl({
   namespace:"user-edit",
   name:"username",
   displayname:"Username",
   type:"text",
   placeholder:"Type Your Username",
   value:o.username
})}


${FormControl({
   namespace:"user-edit",
   name:"name",
   displayname:"Full Name",
   type:"text",
   placeholder:"Type Your Full Name",
   value:o.name
})}


${FormControl({
   namespace:"user-edit",
   name:"location",
   displayname:"Location",
   type:"text",
   placeholder:"Type Your Location",
   value:o.location
})}



${FormControl({
   namespace:"user-edit",
   name:"gender",
   displayname:"Gender",
   type:"text",
   placeholder:"Type Your Gender",
   value:o.gender
})}
${FormControl({
   namespace:"user-edit",
   name:"email",
   displayname:"Email",
   type:"text",
   placeholder:"Type Your Email",
   value:o.email
})}
${FormControl({
   namespace:"user-edit",
   name:"favorite-dog",
   displayname:"Favorite Dog",
   type:"text",
   placeholder:"Type Your favorite Dog",
   value:o.favorite_dog
})}

`;





const filterList = (animals,type) => {
   let a = [...(new Set(animals.map(o=>o[type])))];
   return templater(o=>`<div class="filter" data-field="${type}" data-value="${o}">${o[0].toUpperCase()+o.substr(1)}</div>`)(a);
}

const makeFilterList = (animals) => {
   return `
   <div class="filter" data-field="type" data-value="all">All</div> | 

   ${filterList(animals,'breed')} 
   `;
}




const makeUploaderImage = (el,name,folder='') => {
   $(el).parent().css({'background-image':`url('${folder+name}')`}).addClass("picked")
      .prev().val(folder+name)
}












