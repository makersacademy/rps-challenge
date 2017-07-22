feature "Player selecting object" do

  scenario "chosen item appears on screen" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content ("Your weapon of choice: The Almighty Rock")
  end
end
