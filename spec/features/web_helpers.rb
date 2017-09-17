def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Benjamin'
  find('select[id="Weapondrop"]').select("Rock")
  click_button 'Fight'
end
