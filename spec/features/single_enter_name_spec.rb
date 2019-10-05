feature 'Player enters their name' do
  scenario 'Player 1 types their name' do
    single_sign_in
    fill_in :player, with: "Player1"
    click_button 'Submit'
    expect(page).to have_content "Ok, what's your move?"
  end
end
