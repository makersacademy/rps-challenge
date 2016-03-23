def play_single
  visit('/single')
  fill_in 'name', with: 'Murilo'
  select "Rock", from: "weapon"
  click_button 'Play!'
end

def multiplayer_win
  visit('/multi')
  player_one
  fill_in 'name', with: 'Opponent'
  select "Scissors", from: "weapon"
  click_button 'Play!'
end

def multiplayer_lose
  visit('/multi')
  player_one
  fill_in 'name', with: 'Opponent'
  select "Paper", from: "weapon"
  click_button 'Play!'
end

def multiplayer_draw
  visit('/multi')
  player_one
  fill_in 'name', with: 'Opponent'
  select "Rock", from: "weapon"
  click_button 'Play!'
end

def player_one
  fill_in 'name', with: 'Murilo'
  select "Rock", from: "weapon"
  click_button 'Play!'
end
