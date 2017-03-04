def sign_in_and_play
  visit('/')
  fill_in :name_1, with: 'Dave'
  fill_in :name_2, with: 'Mittens'
  click_button 'start'
end
