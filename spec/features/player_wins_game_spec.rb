feature "Player wins" do
  scenario "Player wins game and is confirmed on page" do
    sign_in_and_play
    click_button("Rock")
    click_button("Get Result")
    expect(page).to have_content "Congratulation!! You won"
  end
end