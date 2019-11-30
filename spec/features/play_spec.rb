feature "Play" do
  scenario "shows It's a tie! if both computer and player choose 'Rock'" do
    srand(0)
    sign_in_and_play
    choose "Rock"
    click_button "OK"
    expect(page).to have_content "It's a tie!"
  end
end
