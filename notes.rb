<%= elsif @game.winner == :opponent %>
  Computer won!
<%= else @game.winner == :player %>
  It was a Draw!
