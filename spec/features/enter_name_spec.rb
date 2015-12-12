# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Entering names' do
  scenario 'Allows the player to enter their name and displays it' do
    visit '/'
    fill_in(:player_name, with: 'Marketeer')
    click_button('Submit')
    expect(page).to have_content 'Marketeer'
  end
end
