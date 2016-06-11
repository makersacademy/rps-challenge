feature "Picking a move" do
  scenario "player 1 picks rock" do
    sign_in_and_start
    choose("Rock")
    click_button("Submit")
    expect(find(".player-1")).to have_content("Van chose rock")
  end

  scenario "player 1 picks paper" do
    sign_in_and_start
    choose("Paper")
    click_button("Submit")
    expect(find(".player-1")).to have_content("Van chose paper")
  end

  scenario "player 1 picks scissors" do
    sign_in_and_start
    choose("Scissors")
    click_button("Submit")
    expect(find(".player-1")).to have_content("Van chose scissors")
  end

  scenario "computer picks a move at random" do
    sign_in_and_start
    choose("Scissors")
    srand(12_345)
    click_button("Submit")
    expect(find(".player-2")).to have_content("scissors")
  end

  scenario "player 1 plays a second round" do
    sign_in_and_start
    choose("Scissors")
    click_button("Submit")
    click_button("Play Again")
    expect(page).to have_content("Welcome Van!")
    # choose("Paper")
    # click_button("Submit")
    # expect(find(".player-1")).to have_content("Van chose paper")
  end
end
