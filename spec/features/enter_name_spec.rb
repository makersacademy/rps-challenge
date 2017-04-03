require_relative '../../app'

feature 'input name' do
  scenario 'a player can enter their name' do
    sign_in_and_play
    expect(page).to have_content("Welcome Will, prepare yourself for the game of your life!")
  end
end
