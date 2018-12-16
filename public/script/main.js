
function which_character()
{
  var element = document.form.char;
  for (var i=0; i < element.length; i++)
  {
    if (element[i].checked)
    {
      var char = element[i].value;
      break;
    }
  }
}