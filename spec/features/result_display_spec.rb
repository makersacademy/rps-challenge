feature "Page displays the correct result_single" do
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

feature "Page displays the correct result_multi" do
  scenario "player_1 rock player_2 paper (P2)" do
    enter_and_submit_names_multi
    find_by_id('rock1').choose
    find_by_id('paper2').choose
    click_button "Submit"
    expect(page).to have_text "Sophie wins!"
  end

  scenario "player_1 scissors player_2 paper (P1)" do
    enter_and_submit_names_multi
    find_by_id('scissors1').choose
    find_by_id('paper2').choose
    click_button "Submit"
    expect(page).to have_text "Rosie wins!"
  end

  scenario "It's a draw" do
    enter_and_submit_names_multi
    find_by_id('scissors1').choose
    find_by_id('scissors2').choose
    click_button "Submit"
    expect(page).to have_text "It's a draw!"
  end
end