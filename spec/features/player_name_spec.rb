feature 'Enter Player Name' do
  scenario 'player enters name before entering the game' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Joe'
  end
end
