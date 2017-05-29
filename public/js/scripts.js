function NameIsEmpty(){
  if(document.forms['player_name_form'].player_name.value === "")
  {
    alert("Please enter your name");
    return false;
  }
    return true;
}