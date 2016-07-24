feature "'play again' button" do
  scenario "User presses 'play again' button to play again" do
    sign_in_and_play
    choose "Rock"
    click_button "ok"
    click_button "play again"
    expect(page).to have_content("Noby, let's play Rock, Paper, Scissors!")
  end
end
