# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter name' do
  scenario 'Registering name' do
    sign_in_and_play
    expect(page).to have_content 'jgeorgex' # need to add 'in red' for in lights requirement.
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'selects rock' do
  scenario 'player selects rock' do
    sign_in_and_play
    fill_in "rock", with: 'rock'
    click_button 'Play'
  expect(page).to have_content('You have chosen rock')
  end
end
