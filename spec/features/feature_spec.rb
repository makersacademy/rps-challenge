feature 'Sign-in' do
  scenario 'Player enters their name and this is displayed on-screen' do
    visit('/')
    fill_in 'player_name', with: "Ed"
    click_button 'Submit'
    expect(page).to have_content("Welcome to Rock, Paper, Scissors Ed!")
  end
end

feature 'Making a selection' do
  scenario 'Player is presented with a choice of moves' do
    visit('/')
    fill_in 'player_name', with: "Ed"
    click_button 'Submit'
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario 'Player chooses move and gets confirmation' do
    visit('/')
    fill_in 'player_name', with: "Ed"
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content("Ed chose rock!")
  end
end

