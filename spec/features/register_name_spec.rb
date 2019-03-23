# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
require './app'

feature 'Start game' do
  scenario 'user can register his name' do
    visit '/'
    fill_in "name",	with: "User1" 
    click_button 'Start game'
    expect(page).to have_content("User: User1")
  end
end