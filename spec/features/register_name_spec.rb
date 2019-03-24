# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
require './app'

feature 'Start game' do
  scenario 'user can register his name' do
    visit '/'
    fill_in "player1",	with: "User1" 
    fill_in "player2",	with: "User2" 
    click_button 'Start game'
    click_button 'normal'
    expect(page).to have_content("Player 1: User1")
    expect(page).to have_content("Player 2: User2")
  end
end
