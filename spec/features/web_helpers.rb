def register_one_player_rps
  visit('/')
  choose('one_player')
  choose('rock_paper_scissors')
  click_button 'Play!'
  fill_in :name, with: 'Katerina'
  click_button 'Start game'
end
def register_two_players_rps
  visit('/')
  choose('two_players')
  choose('rock_paper_scissors')
  click_button 'Play!'
  fill_in :name_one, with: 'Katerina'
  fill_in :name_two, with: 'Ivan'
  click_button 'Start game'
end

def register_one_player_and_play_rps(choice)
  register_one_player_rps
  choose(choice)
  click_button 'Play!'
end

def register_two_players_and_play_rps(choice1, choice2)
  register_two_players_rps
  choose(choice1)
  click_button 'Play!'
  choose(choice2)
  click_button 'Play!'
end

def register_one_player_rpssl
  visit('/')
  choose('one_player')
  choose('rock_paper_scissors_spock_lizard')
  click_button 'Play!'
  fill_in :name, with: 'Katerina'
  click_button 'Start game'
end

def register_two_players_rpssl
  visit('/')
  choose('two_players')
  choose('rock_paper_scissors_spock_lizard')
  click_button 'Play!'
  fill_in :name_one, with: 'Katerina'
  fill_in :name_two, with: 'Ivan'
  click_button 'Start game'
end

def register_one_player_and_play_rpssl(choice)
  register_one_player_rpssl
  choose(choice)
  click_button 'Play!'
end

def register_two_players_and_play_rpssl(choice1, choice2)
  register_two_players_rpssl
  choose(choice1)
  click_button 'Play!'
  choose(choice2)
  click_button 'Play!'
end
