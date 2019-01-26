

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'name registration' do
  scenario 'players can enter their names' do
    visit('/')
    fill_in('name', with: 'Jill')
    click_button('Submit')
    page.should have_content('Jill')
  end

end
