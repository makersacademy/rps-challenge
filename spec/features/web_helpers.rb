def register_for_singleplayer_and_play
  visit('/')
  # choose('Rock, paper, scissors classic')
  choose('Rock, paper, scissors classic', allow_label_click: true)
  click_button 'Single player'
  fill_in :name, with: 'Clare'
  click_button 'Play'
end

def register_for_multiplayer_and_play
  visit('/')
  choose('Rock, paper, scissors classic', allow_label_click: true)
  click_button 'Multiplayer'
  fill_in :name, with: 'Clare'
  fill_in :name2, with: 'Laura'
  click_button 'Play'
end

def register_for_singleplayer_and_play_spock_variant
  visit('/')
  # choose('Rock, paper, scissors classic')
  choose('Rock, paper, scissors, lizard, spock', allow_label_click: true)
  click_button 'Single player'
  fill_in :name, with: 'Clare'
  click_button 'Play'
end
