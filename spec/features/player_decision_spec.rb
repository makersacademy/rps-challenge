feature "let player choose" do
  scenario "player choose paper" do
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content "Serena chooses ROCK!"
    expect(page).not_to have_content "Serena chooses!"
  end
end
