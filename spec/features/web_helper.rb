TEST_PLAYER_NAME = 'Test_player'.freeze

def access_login_page
  visit '/'
end

def login_to_game
  access_login_page
  fill_in :name_field , with: TEST_PLAYER_NAME
  click_button :play_button
end
