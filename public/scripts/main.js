var playAgainBtn = document.getElementById("form-continue-submit");
var submitBtn = document.getElementById("form-choice-submit");
var handImages = document.getElementsByClassName("player-hand");

if (playAgainBtn) {
  playAgainBtn.onclick = function(e){
    e.preventDefault();

    for (var i = 0; i < handImages.length; i++) {
    	handImages[i].classList.add("close");
    }

    var form = document.getElementById("form-continue");
    form.classList.add("submitted");

    setTimeout(function(){
      form.submit();
    }, 2000);
  }
}

if (submitBtn) {
  submitBtn.onclick = function(e){
    e.preventDefault();
    
    handImages[0].classList.add("countdown");

    var form = document.getElementById("form-choice");
    form.classList.add("submitted");

    setTimeout(function(){
      form.submit();
    }, 4000);
  }
}
