feature 'enter a player name' do
  scenario 'player enter name in form' do
    sign_in_and_play
    expect(page).to have_content 'Player'
  end
end
