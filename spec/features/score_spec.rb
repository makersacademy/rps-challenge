feature "FEATURE: keeps scores" do
  let(:computer_weapon_array) { ComputerPlayer::RPS_WEAPONS }

  scenario "each game begins with player_1's score set to 0" do
    sign_in_and_play
    expect(page).to have_content "Alistair score: 0"
  end

  scenario "each game begins with player_2's score set to 0" do
    sign_in_and_play
    expect(page).to have_content "Ava score: 0"
  end

  scenario "if player_1 wins, player_1's socre gets plus 1" do
    allow(computer_weapon_array).to receive(:shuffle).and_return([:scissors])
    sign_in_play_and_choose_rock
    expect(page).to have_content "Alistair score: 1"
  end

  scenario "if player_2 wins, player_2's score gets plus 1" do
    allow(computer_weapon_array).to receive(:shuffle).and_return([:paper])
    sign_in_play_and_choose_rock
    expect(page).to have_content "Ava score: 1"
  end

  scenario "if a draw, player_1 gets 0 points" do
    allow(computer_weapon_array).to receive(:shuffle).and_return([:rock])
    sign_in_play_and_choose_rock
    expect(page).to have_content "Alistair score: 0"
  end

  scenario "if a draw, player_2 gets 0 points" do
    allow(computer_weapon_array).to receive(:shuffle).and_return([:rock])
    sign_in_play_and_choose_rock
    expect(page).to have_content "Ava score: 0"
  end

  scenario "after a game, next turn button allows player_1 another turn" do
    sign_in_play_and_choose_rock
    click_button "Next Round"
    find_button "rock"
    find_button "paper"
    find_button "scissors"
  end

end
