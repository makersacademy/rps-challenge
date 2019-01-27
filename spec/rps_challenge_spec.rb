feature RPS do
  scenario 'Initial page allows user to input username' do
    visit('/')
    expect(page).to have_field("player1_name")
  end
  scenario 'Main game screen shows three buttons for options' do
    player1_sign_in
    expect(page).to have_button("rock")
    expect(page).to have_button("paper")
    expect(page).to have_button("scissors")
  end
  scenario 'User can choose one of the weapons and is presented with the result' do
    player1_sign_in
    click_button("rock")
    expect(page).to have_content("Marketeer 1 has gone with")
  end
  scenario 'User is presented with the option the computer chose and the result' do
    player1_sign_in
    click_button("rock")
    expect(page).to have_content("Your opponent has gone with")
  end

end
