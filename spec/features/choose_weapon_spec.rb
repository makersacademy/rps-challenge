RSpec.feature "Choose weapon", :type => :feature do
  scenario "Select weapon from dropdown list" do
    sign_up_submit_generate_opponent
    click_button("Choose Your Weapon")
    expect(page).to have_select("weapon", options: ["Rock", "Paper", "Scissors"])
  end

  scenario "Select random weapon" do
    sign_up_submit_generate_opponent
    click_button("Choose Your Weapon")
    expect(page).to have_select("weapon", options: ["Rock", "Paper", "Scissors"])
    click_button("Random")

  end
end
