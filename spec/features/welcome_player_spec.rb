feature 'player enters game' do
  scenario 'player fills in name and sees welcome message' do
    sign_in_and_play
    expect(page).to have_content "Welcome Nigel! Let's start the game."
  end
end
