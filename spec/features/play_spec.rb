feature "Play" do
  scenario "shows 'You tie! if both computer and player choose 'Rock'" do
    srand(0)
    sign_in_and_play
    choose "Rock"
    click_button "OK"
    expect(page).to have_content "You tie!"
  end
end
