feature "entering a move" do
  scenario "player can input rock, paper, or scissors" do
    sign_in_and_play
    click_button"Into the fray!"
    expect(page).to have_content "Katy has beaten the computer!"
  end
end