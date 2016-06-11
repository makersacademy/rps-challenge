var submissionForm = document.getElementById("form-continue");
var submissionBtn = document.getElementById("form-continue-submit");
var submissionImgs = document.getElementsByClassName("player-hand");

submissionBtn.onclick = function(e){
  e.preventDefault();

  for (var i = 0; i < submissionImgs.length; i++) {
    console.log(submissionImgs[i].classList);
  	submissionImgs[i].classList.add("close");
  }

  setTimeout(function(){
    submissionForm.submit();
  }, 1000);
}
