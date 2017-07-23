feature "Player selecting human opponent" do

  scenario "chosen opponent confirmed on screen" do
    sign_in_and_play_human
    expect(page).to have_content "It's Marvin vs. Ethel"
  end
end
