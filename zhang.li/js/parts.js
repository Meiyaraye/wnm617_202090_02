

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

 


/*    Teacher's 
     
const makeAnimalList = templater(o=>`
<div class="animallist-item js-animal-jump" data-id="${o.id}">
   <div class="animallist-image">
      <img src="${o.img}" alt="">
   </div>
   <div class="animallist-description">
      <div class="animallist-name">${o.name}</div>
      <div class="animallist-type"><strong>type</strong> ${o.type}</div>
      <div class="animallist-breed"><strong>breed</strong> ${o.breed}</div>
   </div>
</div>
`);



const makeUserProfile = templater(o=>`
<div class="profile-image">
   <img src="${o.img}" alt="">
</div>
<div class="profile-body">
   <div class="profile-name">${o.name}</div>
   <div class="profile-email"><strong>Email</strong>: ${o.email}</div>
</div>
<p><a href="#settings-page">Settings</a></p>
`);

const makeAnimalProfile = templater(o=>`
<div class="profile-image">
   <img src="${o.img}" alt="">
</div>
<div class="profile-body">
   <div class="profile-name">${o.name}</div>
   <div class="profile-type"><strong>Type</strong>: ${o.type}</div>
   <div class="profile-breed"><strong>Breed</strong>: ${o.breed}</div>
</div>
`);

*/





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
         </div>

      <div style="
    position: relative;
    flex: 1 1 100%;
    overflow: hidden;">

  <div class="overscroll">
      
          <h4> Recently Dog Added</h4>
        
       <img src="img/pin_on_map.png" alt="">
          
       
     
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

                 <p > ${o.description}
            </p>

       <h4>Pinned on map:</h4>
       <img src="img/pin_on_map.png" alt="">

            </div>
`);


/*
const makeAnimalProfile = templater(o=>`
<div class="profile-image">
   <img src="${o.img}" alt="">
</div>
<div class="profile-body">
   <div class="profile-name">${o.name}</div>
   <div class="profile-type"><strong>Color</strong>: ${o.color}</div>
   <div class="profile-breed"><strong>Breed</strong>: ${o.breed}</div>
</div>
`);*/