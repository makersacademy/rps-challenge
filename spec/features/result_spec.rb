feature "Display results of the round" do
  scenario "Winner is displayed" do
    play_single
    click_button('Play')
    expect(page).to have_content "Sid wins round"
  end

  # scenario "Winning move shown" do
  #   play_single
  #   click_button('Play')
  #   expect(page).to have_content "Paper beats Rock"
  # end

end
