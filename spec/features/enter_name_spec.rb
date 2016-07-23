RSpec.feature "Name Input Form", :type => :feature do
#feature "Name Input Form" do
  scenario "User enters their name" do
    visit "/"
    fill_in :player_1_name, with: "Julie"
    click_button "Submit"

    expect(page).to have_content "Julie"
  end
end
