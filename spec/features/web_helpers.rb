# spec/features/web_helpers.rb

def sign_in_as_michael
  visit('/')
  fill_in :player_1_name, with: "Michael"
  choose('1')
  click_button "Let's Go!"
end

def sign_in_as_tom_and_jerry
  visit('/')
  fill_in :player_1_name, with: "Tom"
  fill_in :player_2_name, with: "Jerry"
  choose('2')
  click_button "Let's Go!"
end