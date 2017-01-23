def sign_in_and_play
  visit '/'
  page.driver.clear_cookies
  Capybara.reset_sessions!
  visit '/'
  fill_in :player_1_name, with: 'Rob'
  choose 'rock'
  click_button 'Play!'
end
def sign_in_and_play_two_player
  visit '/'
  page.driver.clear_cookies
  Capybara.reset_sessions!
  visit '/'
  fill_in :player_1_name, with: 'Link'
  fill_in :player_2_name, with: 'Ganon'
  choose 'rock'
  choose 'spock2'
  click_button 'Play!'
end
