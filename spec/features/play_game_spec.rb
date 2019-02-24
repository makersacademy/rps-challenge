feature 'Play game' do
  scenario 'allow playerers to select weapon and play game ' do
    signup_and_play
    choose ("scissors1")
    choose ("paper2")
    click_button('Play')
    expect(page).to have_content("Ant selected scissors")
    expect(page).to have_content("Elephant selected paper")
    expect(page).to have_content("Ant wins!")
  end

  scenario "Tell players that there should be weapons selected by both players to play the game if either player does not select a weapon before playing" do
    signup_and_play
    choose ("scissors1")
    click_button('Play')
    expect(page).not_to have_content("Ant selected scissors")
    expect(page).not_to have_content("Elephant selected paper")
    expect(page).not_to have_content("Ant wins!")
  end
end
