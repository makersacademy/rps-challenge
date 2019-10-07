feature 'Player enters their name' do
  scenario 'Player 1 types their name' do
    single_sign_in
    fill_in :name, with: "Player1"
    click_button 'Submit'
    expect(page).to have_content "Ok, what's your move?"
    expect(page).to have_content "Welcome, Player1!"
  end
end
