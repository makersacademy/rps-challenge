# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Registering name' do
  scenario 'user registers name' do
    visit("/")
    fill_in('name', with: 'Rob')
    click_button('Begin Game')
    expect(page).to have_content("Rob")
  end
end
