# As a user
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Enter name" do
  scenario "Create user name and display this" do
    visit('/')
    fill_in('player', with: 'Trump')
    click_button('Submit')
    expect(page).to have_content('Trump')
  end
end
