def register_player1(name)
  visit '/'
  within('#registration-form') do
    fill_in 'player1_name', with: name
  end
  click_button "Let's go"
end
