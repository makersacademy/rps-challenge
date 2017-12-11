feature 'login' do
  scenario 'it should allow players to enter names before playing the game' do
    sign_in_and_ready_up
  end

  scenario 'it should have field for player1 to enter name' do
    visit('/')
    expect(page).to have_field("player1")
  end

  scenario 'it should have field for player2 to enter name' do
    visit('/')
    expect(page).to have_field("player2")
  end

  scenario 'it should allow players to submit their names' do
    visit('/')
    expect(page).to have_button("Submit")
  end

end