

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