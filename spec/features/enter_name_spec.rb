RSpec.feature "Enter player name", :type => :feature do
  scenario "User visits the site to start playing a game" do
    visit "/"
    fill_in :name, :with => "Marketer McMarketerface"
    click_button "Submit"
    expect(page).to have_text("Marketer McMarketerface")
  end
end
