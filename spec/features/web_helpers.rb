
def sign_in_and_play
  visit('/')
  fill_in 'name', with: 'Steph'
  click_button "Submit"
end

<form action="/player_move" method="post">
  <input type="radio" name="move" value=<%=@name%>> Rock<br>
  <input type="radio" name="move" value=<%=@name%>> Paper<br>
  <input type="radio" name="move" value=<%=@name%>> Scissors<br>
  <input type="submit" value="Make your move">
</form>
