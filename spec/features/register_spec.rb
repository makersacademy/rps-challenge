# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Registering name' do
  scenario 'user registers name' do
    # Setup - user enters name in form
    visit("/")
    fill_in('name', with: 'Rob')
    # Exercise - user clicks submit
    click_button('Begin Game')
    # Verification - page has name on it as content
    expect(page).to have_content('Player: Rob')
  end
end
