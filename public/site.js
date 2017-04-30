function validateForm() {
  var x = document.getElementById("name1").value;
  if (x == "") {
      alert("Name must be filled out");
      return false;
  }
}

function validateForm_2() {
  var x = document.getElementById("name1").value;
  var y = document.getElementById("name2").value;
  if (x === "" || y === "" ) {
      alert("All form fields must be filled out");
      return false;
  }
}
