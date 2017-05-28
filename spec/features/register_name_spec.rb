# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'the player can register it\'s name' do
  scenario 'player register it\'s name and can see it' do
    visit('/')
    fill_in('name', with: 'Guillermo')
    click_button('Submit')
    expect(page).to have_content('Guillermo')
  end
end
