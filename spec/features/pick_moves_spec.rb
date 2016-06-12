feature "Picking a move" do
  scenario "Player 1 can pick rock" do
    sign_in_and_start
    choose("Rock")
    click_button("Submit")
    expect(find(".player-1")).to have_content("Van chose rock")
  end

  scenario "Player 1 can pick paper" do
    sign_in_and_start
    choose("Paper")
    click_button("Submit")
    expect(find(".player-1")).to have_content("Van chose paper")
  end

  scenario "Player 1 can pick scissors" do
    sign_in_and_start
    choose("Scissors")
    click_button("Submit")
    expect(find(".player-1")).to have_content("Van chose scissors")
  end

  scenario "Computer picks a move at random" do
    sign_in_and_start
    choose("Scissors")
    srand(12_345)
    click_button("Submit")
    expect(find(".player-2")).to have_content("scissors")
  end

  scenario "Player 1 can play a second round" do
    sign_in_and_start
    choose("Scissors")
    click_button("Submit")
    click_button("Play Again")
    expect(page).to have_content("Welcome Van!")
  end
end
