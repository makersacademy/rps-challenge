feature "Page displays the correct result" do
  scenario "player wins" do
    enter_and_submit_name_single
    expect($game.player_2).to receive(:weapon_selector).and_return(:scissors)
    allow($game.player_2).to receive(:weapon).and_return(:scissors)
    click_button "Rock"
    expect(page).to have_text "You win!"
  end

  scenario "player loses" do
    enter_and_submit_name_single
    expect($game.player_2).to receive(:weapon_selector).and_return(:paper)
    allow($game.player_2).to receive(:weapon).and_return(:paper)
    click_button "Rock"
    expect(page).to have_text "You lose!"
  end

  scenario "It's a draw" do
    enter_and_submit_name_single
    expect($game.player_2).to receive(:weapon_selector).and_return(:rock)
    allow($game.player_2).to receive(:weapon).and_return(:rock)
    click_button "Rock"
    expect(page).to have_text "It's a draw!"
  end
end