feature "Play again?" do

  scenario "player given option play another game" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_selector("input[type=submit][value='Play again?']")
  end

  scenario "playing again let's player choose again" do
    sign_in_and_play
    click_button "Rock"
    click_button "Play again?"
    expect(page).to have_selector("input[type=submit][value='Rock']")
  end

end
