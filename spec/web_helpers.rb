def sign_in_and_play
  visit('/')
  fill_in :marketeer_name, with: 'Margo'
  click_button 'Submit'
end
