# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online gamer

feature "register" do
  scenario "player registers his/her name and sees is on the screen" do
    visit('/')
    fill_in('name', with: 'Alex')
    click_button('Start')
    expect(page).to have_content('Welcome, Alex!')
  end
end
