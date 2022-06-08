feature "returns to start" do
  scenario "player clicks play again button" do
    enter_and_submit_name_single
    sample_gameplay
    click_button "Yes, please"
    expect(page).to have_text "Please select your weapon..."
  end
end