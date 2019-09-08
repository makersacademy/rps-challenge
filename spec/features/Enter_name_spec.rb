# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter name' do
  scenario 'Registering name' do
    visit('/') # player visits home page
    fill_in :player_name, with: 'jgeorgex' # player enters name
    click_button 'PLAY RPS!'
    expect(page).to have_content 'jgeorgex'
  end
end
