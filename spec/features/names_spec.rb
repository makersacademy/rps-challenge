feature "FEATURE: enter player name" do
  scenario "submitting player name" do
    visit('/name')
    fill_in :player_1, with: "Alistair"
    click_button "Submit"
    expect(page).to have_content "Alistair vs. Ava"
  end
end
