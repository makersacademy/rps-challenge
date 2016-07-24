RSpec.feature "Name Input Form", :type => :feature do
#feature "Name Input Form" do
  scenario "User enters their name" do
    enter_name_and_play
    expect(page).to have_content "Julie"
  end
end
