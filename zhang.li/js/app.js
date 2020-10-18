

// Document Ready
$(()=>{

   checkUserId();

   $(document)


   /* FORM SUBMISSIONS */

   // event delegation
   .on("submit","#signin-form",function(e){
      e.preventDefault();
      checkSigninForm();
   })



   /* ANCHOR CLICKS */

   .on("click",".js-logout",function(e){
      sessionStorage.removeItem('userId');
      checkUserId();
   })






   .on("click","[data-activate]",function(){
      let target = $(this).data('activate');
      $(target).addClass("active");
   })
   .on("click","[data-deactivate]",function(){
      let target = $(this).data('deactivate');
      $(target).removeClass("active");
   })
   .on("click","[data-toggle]",function(){
      let target = $(this).data('toggle');
      $(target).toggleClass("active");
   })
 ;






   $("[data-template]").each(function(){
      let target = $(this).data("template");
      let template = $(target).html();
      $(this).html(template);
   })

})





// Image Picker

// This function just works and can be used for many file types.
// It will accept multiple files, and will only fire the callback once for each file.
// Don't try to reinvent this
function readFiles(files,callback,index=0) {
  if (files && files[0]) {
    let file = files[index++],
        reader = new FileReader();
    reader.onload = function(e){
      callback(e);
      if(index<files.length) readFiles(files,callback,index);
    }
    reader.readAsDataURL(file);
  }
}






// Create a selector for an input and then do whatever you want using the callback function.
$("body")
  .on("change",".imagepicker-replace input",function() {
  // store the current "this" into a variable
  var imagepicker = this;
  readFiles(this.files,function(e) {
    // "this" will be different in the callback function
    $(imagepicker).parent()
      .addClass("picked")
      .css({"background-image":"url("+e.target.result+")"});
  });
})



// This example will add a new thumbnail each time
$("body")
  .on("change",".imagepicker-add input",function() {
  var imagepicker = this;
  readFiles(this.files,function(e) {
    $(imagepicker).parent().before(
      "<div class='thumbnail' style='background-image:url("+e.target.result+")'></div>"
    )
  });
});
