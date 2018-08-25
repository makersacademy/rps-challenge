feature 'Features - RPS' do

  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario 'player enter his name' do
    visit('/')
    fill_in :player, with: 'Sheldon'
    click_button 'Submit'
  end

end
