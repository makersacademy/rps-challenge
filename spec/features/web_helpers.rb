def start_game
  visit '/'
    fill_in :player, with: 'Sachin'
    click_button 'Start Game'
  end

def play_rock
      choose ('rock')
    click_button 'play'
  end
