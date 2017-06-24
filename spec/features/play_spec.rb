# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'see my name on welcome page' do
  scenario 'Can sign in and see my name on the welcome page' do
    visit('/')
    fill_in("player_name", with: "Jini")
    click_button("Let's Play!")
    expect(page).to have_content 'Jini'
  end
end
