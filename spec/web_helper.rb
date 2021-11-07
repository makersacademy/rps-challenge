def sign_in
  visit('/')
  fill_in :player_name, with: 'Ginny'
  click_button "Let's Play!"
end

def start_game
  click_button "Start a Game"
  select 'Paper', :from => "element_select"
  click_button "Rock, Paper, Scissors, Go!!!"
end