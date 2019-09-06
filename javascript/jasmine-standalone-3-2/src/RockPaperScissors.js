'use strict';

function RockPaperScissors() {
  this.player2 = "Computer"
  this.player1
}
var player1 = prompt("Choose rock, paper or scissors?");
var player2 = prompt("Choose rock, paper or scissors?");
// RockPaperScissors.prototype.getPlayer1 = function() {
//   return this.Player1;
// };
RockPaperScissors.prototype.play = function(player1, player2) {
var compare = function(player1, player2){
    if(player1===player2){
        return "No one wins";
      }
  if (player1==="Paper"){
    if(player2==="Rock") {
    return "Paper wins";
  }
  else{
    return "Scissors wins";
 }
}
  if(player1==="Scissors") {
    if(player2==="Rock") {
    return "Rock wins";
  }
    else{
    return "Scissors wins";
  }
}
if(player1==="Rock") {
  if(player2==="Paper") {
  return "Paper wins";
}
  else{
  return "Rock wins";
}
}
}
};
console.log("Player 1: " + player1);
console.log("Player 2: " + player2);
compare(player1, player2);
