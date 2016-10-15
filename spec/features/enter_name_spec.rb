require './app'

RSpec.feature "player name record", :type => :feature do

  scenario "User enters name" do
    visit "/"
    fill_in "player_one_name", with: "David Miller"
    click_button "Play"
    expect(page).to have_content("David Miller")
  end
end
