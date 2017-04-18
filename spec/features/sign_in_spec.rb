
feature "sign in" do
  scenario "submitting names" do
    visit ('/')
    fill_in :player, with: "Maru"
    click_button "Play"
    expect(page).to have_content "Maru vs Computer"
  end

end
