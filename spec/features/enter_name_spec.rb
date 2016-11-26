RSpec.feature "Enter player name", :type => :feature do
  scenario "User visits the site enters their name and sees it" do
    sign_up_submit
    expect(page).to have_text("Marketer McMarketerface")
  end
end
