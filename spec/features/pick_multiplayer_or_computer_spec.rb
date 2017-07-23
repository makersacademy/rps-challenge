feature "Player selecting computer or human opponent" do

  scenario "chosen opponent confirmed on screen" do
    sign_in_and_play_computer
    click_button "Rock"
    expect(page).to have_content ("Your weapon of choice: The Almighty Rock")
  end
end
