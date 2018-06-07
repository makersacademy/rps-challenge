feature "Displays the users name" do

  scenario "shows the names of the players" do
    sign_in_and_play_2_player
    expect(page).to have_content("Jim choose your move")
    click_button("rock")
    expect(page).to have_content("Bob choose your move")
  end

end
