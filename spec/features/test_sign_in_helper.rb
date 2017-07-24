def single_sign_in_and_submit
  visit '/'
  fill_in :player_1_name, with: 'Spock'
  click_button 'Play'
end
