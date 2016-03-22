
SEED = 1234

def sign_in_one_player_game(player_name)
  visit "/"
  fill_in "player_name", :with => player_name
  choose ('one-player')
  click_button "Submit"
end

def sign_in_two_player_game(player_name)
  visit "/"
  fill_in "player_name", :with => player_name
  choose ('two-player')
  click_button "Submit"
end

def in_browser(name)
  old_session = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end

def two_player_sign_in(player1_name, player2_name)
  in_browser(:one) do
    sign_in_two_player_game(player1_name)
  end
  in_browser(:two) do
    sign_in_two_player_game(player2_name)
  end
  in_browser(:one) do
    click_button("Check")
  end
end
