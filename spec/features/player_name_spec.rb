require './app.rb'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "register player name" do
  scenario "enter player name in box" do
    visit ('/')
    fill_in('name', with: 'Julien')
    click_button('Register!')
    expect(page).to have_content('Player name: Julien')
  end
end
