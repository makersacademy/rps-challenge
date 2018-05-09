window.addEventListener("DOMContentLoaded", function () {
  var form = document.getElementById("weapon");

  var buttons = document.getElementsByClassName("selector");

  for (var i = 0; i < buttons.length; i++) {
    buttons[i].addEventListener("click", function () {
      var weapon = this.name
      var el = document.createElement("input");
      el.type = "hidden";
      el.name = "weapon";
      el.value = weapon;
      form.appendChild(el);
      form.submit();
    });
}

});
