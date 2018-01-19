feature 'Sign-in' do
  scenario 'Player enters their name and this is displayed on-screen' do
    visit('/')
    fill_in 'player_name', with: "Ed"
    click_button 'Submit'
    expect(page).to have_content("Welcome to Rock, Paper, Scissors Ed!")
  end
end