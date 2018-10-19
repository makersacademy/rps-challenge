feature "Enter player name" do
  scenario "submitted name should appear on screen" do
    sign_in_and_play
    expect(page).to have_content "Imtiyaz vs Computer"
  end
end
