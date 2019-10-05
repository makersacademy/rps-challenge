
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Registering name' do
  scenario 'A name can be registered and viewed' do
  visit('/')
  fill_in 'player_1', with: 'One'
  click_button 'Go!'
  expect(page).to have_content 'Player: One'
  end
end