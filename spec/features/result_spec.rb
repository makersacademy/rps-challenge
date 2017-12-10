feature "results" do
  scenario "the player's choice of rock is displayed on the results page" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    sign_in_and_play
    player_choose_rock

    expect(page).to have_content "Ellie chose rock"
  end

  scenario "the player's choice of paper is displayed on the results page" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    sign_in_and_play
    player_choose_paper

    expect(page).to have_content "Ellie chose paper"
  end

  scenario "the player's choice of scissors is displayed on the results page" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    sign_in_and_play
    player_choose_scissors

    expect(page).to have_content "Ellie chose scissors"
  end

  scenario "the computer's choice of scissors is displayed on the results page" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    sign_in_and_play
    player_choose_rock

    expect(page).to have_content "Computer chose rock"
  end

  scenario "the computer's choice of scissors is displayed on the results page" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:paper)
    sign_in_and_play
    player_choose_rock

    expect(page).to have_content "Computer chose paper"
  end

  scenario "the computer's choice of scissors is displayed on the results page" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    sign_in_and_play
    player_choose_rock

    expect(page).to have_content "Computer chose scissors"
  end

  scenario "the computer's name is posted to screen if the computer wins" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    sign_in_and_play
    player_choose_paper

    expect(page).to have_content "Computer won!"
  end

  scenario "the computer's name is posted to screen if the computer wins" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    sign_in_and_play
    player_choose_rock

    expect(page).to have_content "Ellie won!"
  end

  scenario "the computer's name is posted to screen if the computer wins" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    sign_in_and_play
    player_choose_scissors

    expect(page).to have_content "Draw!"
  end

  scenario "the 'Play again' and 'New player' buttons are visible" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    sign_in_and_play
    player_choose_scissors

    expect(page).to have_button "Play again"
    expect(page).to have_button "New player"
  end

end
