feature "start game" do
  before do
    visit '/'
  end

  scenario "marketeer knows to enter name to begin the game" do
    expect(page).to have_content('Enter your name below to take on Superhans!')
  end

  scenario "marketeer can enter their name in order to begin the game" do
    fill_in('player_name', with: 'Alex')
    click_button('submit')
    expect(page).to have_content('Alex vs. Superhans')
  end
end
