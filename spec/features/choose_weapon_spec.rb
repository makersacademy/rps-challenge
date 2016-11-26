RSpec.feature "Choose weapon", :type => :feature do
  scenario "Select weapon from dropdown list" do
    sign_up_submit
    click_button("Choose Weapon")
    expect(page).to have_select("weapons", options: ["Rock", "Paper", "Scissors"])
  end
end
