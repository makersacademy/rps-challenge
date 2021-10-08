feature "starting game" do
  scenario "entering and submitting name" do
    visit "/"
    fill_in :player_name, with: "Buffon"
    click_button "Continue"
    expect(page).to have_content "Let's go, Buffon"
  end
end