def register_one_player
  visit('/')
  choose('one_player')
  choose('rock_paper_scissors')
  click_button 'Play!'
  fill_in :name, with: 'Katerina'
  click_button 'Start game'
end
def register_two_players
  visit('/')
  choose('two_players')
  choose('rock_paper_scissors')
  click_button 'Play!'
  fill_in :name_one, with: 'Katerina'
  fill_in :name_two, with: 'Ivan'
  click_button 'Start game'
end

def register_one_player_and_play(choice)
  register_one_player
  choose(choice)
  click_button 'Play!'
end

def register_two_players_and_play(choice1, choice2)
  register_two_players
  choose(choice1)
  click_button 'Play!'
  choose(choice2)
  click_button 'Play!'
end
