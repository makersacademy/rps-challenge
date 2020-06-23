# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Player registration' do
  scenario 'Player enters their name' do
    visit('/')
    fill_in('player_name', with: 'James')
    click_button('submit')
    expect(page).to have_content("James")
  end
end
