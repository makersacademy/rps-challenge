require_relative '../app.rb'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Register name before game' do
  scenario 'player enters name and it displays on screen' do
    visit('/')
    fill_in :player_name, with: 'Amy'
    click_button 'Play!'
    expect(page).to have_content 'Make your selection, Amy'
  end
end
