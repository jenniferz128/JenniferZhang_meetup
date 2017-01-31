function validateFiles(inputFile) {
  var extErrorMessage = "Only comma-separated values file with extension .csv is allowed";
  var allowedExtension = ["csv"];
  var extName;
  var extError = false;

  $.each(inputFile.files, function() {
    extName = this.name.split('.').pop();
    if ($.inArray(extName, allowedExtension) == -1) {extError=true;};
  });
  if (extError) {
    window.alert(extErrorMessage);
    $(inputFile).val('');
  };
}
$(document).ready(
  function(){
    $('input:file').change(
      function(){
        if ($(this).val()) {
          $('input:submit').attr('disabled',false); 
        } 
      }
    );
});