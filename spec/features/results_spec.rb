feature "Shows the results" do
  scenario "after the comptuer selects it's move" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_text "Robert chose"
    expect(page).to have_text "Computer chose"
  end

  scenario "after the 2nd player selects it's move" do
    sign_in_multiplayer
    click_button("Rock")
    click_button("Scissors")
    expect(page).to have_text "Robert chose"
    expect(page).to have_text "Thor chose"
    expect(page).to have_text "Robert is the winner!"
  end

end
