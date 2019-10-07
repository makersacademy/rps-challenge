def register_for_singleplayer_and_play
  visit('/')
  choose(option: 'classic')
  click_button 'Single player'
  fill_in :name, with: 'Adam'
  click_button 'Play'
end

def register_for_singleplayer_with_no_name_and_play
  visit('/')
  choose(option: 'classic')
  click_button 'Single player'
  fill_in :name, with: ''
  click_button 'Play'
end

def register_for_multiplayer_and_play
  visit('/')
  choose(option: 'spock')
  click_button 'Multiplayer'
  fill_in :name, with: 'Adam'
  fill_in :name2, with: 'Billy'
  click_button 'Play'
end

def register_for_singleplayer_and_play_spock_variant
  visit('/')
  choose(option: 'spock')
  click_button 'Single player'
  fill_in :name, with: 'Adam'
  click_button 'Play'
end
