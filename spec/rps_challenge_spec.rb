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
end
