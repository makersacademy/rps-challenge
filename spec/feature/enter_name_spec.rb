feature "Enter name" do
  scenario "submitting name" do
    sign_in_and_play_single
    expect(page).to have_content "Player: Eoin"
  end
end
