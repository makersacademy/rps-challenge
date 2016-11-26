RSpec.feature "Starting a game", :type => :feature do

  scenario "Homepage" do
    visit('/')
    expect(page).to have_text("Rock Paper Scissors")
  end

  scenario "Player enters their name and starts game" do
    visit '/'
    fill_in "player_name", :with => "Russell"
    click_button "Start"
    expect(page).to have_text("Hello, Russell!")
  end


end
