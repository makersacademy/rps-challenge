
describe 'User Stories' do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game

  feature 'sign up' do
    scenario 'a player would like to register to play' do
      visit('/')
      fill_in :player_name, with: 'Hollie'
      click_button 'Start'
    end
  end
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
end
