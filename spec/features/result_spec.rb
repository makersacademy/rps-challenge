feature "Display player selection" do
  scenario "Player 1 result shown" do
    play_single
    choose(option: "Rock")
    click_button('Play')
    expect(page).to have_content "Sid chose Rock"
  end

  # scenario "Winning move shown" do
  #   play_single
  #   click_button('Play')
  #   expect(page).to have_content "Paper beats Rock"
  # end

end
