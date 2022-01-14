feature "Play" do
  scenario "routes to result screen after choice" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "The computer picked"
  end
end
