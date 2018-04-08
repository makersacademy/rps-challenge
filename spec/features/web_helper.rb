def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Mary'
  fill_in :player_2, with: 'Alf'
  click_button 'Submit'
end

def sign_in_and_play_2
  visit('/')
  fill_in :player_1, with: 'Anton'
  fill_in :player_2, with: 'Cat'
  click_button 'Submit'
end

def draw
  click_button 'Start'
  click_button 'Choose'
  choose('choice', option: 'Rock', allow_label_click: true)
  click_button 'Submit'
  click_button 'Choose'
  choose('choice', option: 'Rock', allow_label_click: true)
  click_button 'Submit'
end

def rock
  sign_in_and_play
  click_button 'Start'
  click_button 'Choose'
  choose('choice', option: 'Rock', allow_label_click: true)
end

def paper
  sign_in_and_play
  click_button 'Start'
  click_button 'Choose'
  choose('choice', option: 'Paper', allow_label_click: true)
end

def scissors
  sign_in_and_play
  click_button 'Start'
  click_button 'Choose'
  choose('choice', option: 'Scissors', allow_label_click: true)
end
