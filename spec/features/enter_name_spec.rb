# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Player register with his/her name' do
  scenario 'let the player begin a game by entering his name' do
    visit '/'
    fill_in :player_name, with: 'name'
    click_button 'Start Game'
    expect(page).to have_content 'Hello name!'
  end
end
