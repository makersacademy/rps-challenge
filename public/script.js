(function () {
  // configure variables needed to access DOM elements

  var user = document.querySelector(".userchoice"),
    computer = document.querySelector(".computerchoice"),
    startbutton = document.querySelector(".startbutton"),
    result = document.querySelector(".result"),
    userchoice,
    winsStates = { Rock: "Scissors", Paper: "Rock", Scissors: "Paper" };

  // listens for click on 'play' button to start game

  startbutton.addEventListener("click", function () {
    this.disabled = true;
    result.innerHTML = "";
    user.className = "userchoice Rock count-in";
    computer.className = "computerchoice Rock count-in";
  });

  // listens for user keydown strokes to decide user choice

  document.addEventListener("keydown", function (event) {
    if (event.keyCode === 82) {
      userchoice = "Rock";
    } else if (event.keyCode === 80) {
      userchoice = "Paper";
    } else {
      userchoice = "Scissors";
    }
  });

  // once animation ends, computer choice is picked at random

  document.addEventListener("animationend", function () {
    if (!userchoice) {
      userchoice = getRandomChoice();
    }
    startbutton.disabled = false;
    var computerchoice = getRandomChoice();
    user.className = "userchoice " + userchoice;
    computer.className = "computerchoice " + computerchoice;
    result.innerHTML = getWinner(userchoice, computerchoice);
    userchoice = "";
  });

  // gets random string from winning states obj

  function getRandomChoice() {
    return Object.keys(winsStates)[Math.floor(Math.random() * 3)];
  }

  // compares user and computer choice to determine winner

  function getWinner(userchoice, computerchoice) {
    if (userchoice === computerchoice) {
      return "A tie.";
    } else if (userchoice === winsStates[computerchoice]) {
      return "Computer Wins! " + computerchoice + " beats " + userchoice;
    }
    return "You Win! " + userchoice + " beats " + computerchoice;
  }
})();
