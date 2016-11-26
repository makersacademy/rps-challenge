require './app'

RSpec.feature "Entering a name", :type => :feature do
  scenario "User enters name" do
    visit '/'
    fill_in "player_name", :with => "George"
    click_button("Save")
    expect(page).to have_text("George")
  end
end
