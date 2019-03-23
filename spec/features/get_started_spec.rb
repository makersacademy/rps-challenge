# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'See name' do
  scenario 'after you enter it' do
    visit('/')
    fill_in 'player_1_name', with: 'Name'
    click_button 'Go!'
    expect(page).to have_content('Name')
  end
end
