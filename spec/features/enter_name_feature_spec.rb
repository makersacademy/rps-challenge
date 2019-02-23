feature 'A Player can enter their name and have it displayed back to them' do
  scenario 'A players name is displayed to them' do
    sign_into_the_game
    expect(page).to have_content 'Player 1 is James'
  end
end
