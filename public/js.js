var player1move;
var player2move;

player1keys = {
  97: "rock",
  115: "paper",
  100: "scissors",
  113: "spock",
  119: "lizard"
}

player2keys = {
  108: "rock",
  107: "paper",
  106: "scissors",
  112: "spock",
  111: "lizard"
}

document.onkeypress = function(e) {
  if (e.keyCode == 100 || e.keyCode == 115 || e.keyCode == 97 || e.keyCode == 119 || e.keyCode == 113) {
    player1move = player1keys[e.keyCode];
    document.getElementById("player1name").style.color = "blue";
    document.getElementById("player1").value = player1move;
  }
  if (e.keyCode == 108 || e.keyCode == 107 || e.keyCode == 106 || e.keyCode == 112 || e.keyCode == 111) {
    player2move = player2keys[e.keyCode];
    document.getElementById("player2name").style.color = "blue";
    document.getElementById("player2").value = player2move;
  }
  if (player1move && player2move) {
    document.getElementById("myForm").submit();
  }
}
