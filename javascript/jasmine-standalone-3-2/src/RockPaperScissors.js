'use strict';

function RockPaperScissors() {
  this.player2 = "Computer"
}
// RockPaperScissors.prototype.getPlayer1 = function() {
//   return this.Player1;
// };
RockPaperScissors.prototype.play = function() {
var compare = function(player1,player2){
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
