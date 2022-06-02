# spec/features/web_helpers.rb

def sign_in_as_michael
  visit('/')
  fill_in :player_1_name, with: "Michael"
  click_button "Let's Go!"
end