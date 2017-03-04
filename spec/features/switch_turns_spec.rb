feature "Game page" do

  scenario "starts with the first player" do
    sign_in_and_play
    expect(page).to_not have_content "Mittens's turn"
    expect(page).to have_content "Dave's turn"
  end

  scenario "Lets the players switch turns" do
    sign_in_and_play
    choose('rock')
    click_button('selected')
    expect(page).to_not have_content "Dave's turn"
    expect(page).to have_content "Mittens's turn"
  end

end
