def sign_in_and_play
  visit '/'
  page.driver.clear_cookies
  Capybara.reset_sessions!
  visit '/'
  fill_in :player_name, with: 'Rob'
  choose 'rock'
  click_button 'Play!'
end
