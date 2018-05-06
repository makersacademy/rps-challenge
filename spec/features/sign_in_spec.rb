feature 'player enters name and clicks submit' do
  scenario 'see player name on play page' do
    sign_in_and_play
    expect(page).to have_content('Welcome, Bob!')
  end
end
