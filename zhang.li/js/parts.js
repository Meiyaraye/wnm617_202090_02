

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
               <h3 id="user-name">${o.name}</h3>
               <p id="user-location">Location: ${o.location}</p>
             </div>    

           <div class="flex-stretch" id="set_icon">
           <a href="#settings-page" >
               <img src="img/setting.svg" alt="add" class="icon" style="width:13vw;height:13vw;">
            </a>
          </div>
         </div>
        
         <div class="user-profile-detail">

         <h4 id="my-information">My Information:</h4>
            <p><span>Gender:</span> ${o.gender}</p>
            <p><span>Email:</span> ${o.email}</p>
            <p><span>Favorite dog:</span> ${o.favorite_dog}</p>


        <h4> Recently Dog Added</h4>
        

          
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
<div>
<a href="#" class="form-button js-animal-jump" data-id="${o.animal_id}">Visit</a> 
</div>
`;



const FormControl = ({namespace,name,displayname,type,placeholder,value}) => {
   return `<div class="form-control">
      <label for="${namespace}-${name}" class="form-label">${displayname}</label>
      <input id="${namespace}-${name}" type="${type}" class="form-input" data-role="none" placeholder="${placeholder}" value="${value}">
   </div>`;
}


const makeAnimalProfileUpdateForm = o => `
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
   placeholder:"Type Animal Breed",
   value:o.breed
})}
`;


const makeUserProfileUpdateForm = o => `
<form id="user-edit-form" data-ajax="false" style="padding:1em">
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
   name:"email",
   displayname:"Email",
   type:"text",
   placeholder:"Type Your Email",
   value:o.email
})}
</form>
`;

