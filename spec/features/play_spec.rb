feature 'Play page' do

  scenario "Can enter a name and see it displayed" do
    sign_in_and_play_one_player
    expect(page).to have_content("Marianne")
  end

  scenario "Can play the computer if just one name is entered" do
    sign_in_and_play_one_player
    expect(page).to have_content("Marianne VS COMPUTER")
  end

  scenario "Can enter two names and see them displayed" do
    sign_in_and_play_two_players
    expect(page).to have_content("Marianne VS Bob")
  end

  scenario "Can see who's turn it is" do
    sign_in_and_play_one_player
    expect(page).to have_content("Marianne's turn")
  end

  scenario "Can see the option to play ROCK" do
    sign_in_and_play_one_player
    expect(page).to have_selector(:link_or_button, "ROCK")
  end

  scenario "Can see the option to play PAPER" do
    sign_in_and_play_one_player
    expect(page).to have_selector(:link_or_button, "PAPER")
  end

  scenario "Can see the option to play SCISSORS" do
    sign_in_and_play_one_player
    expect(page).to have_selector(:link_or_button, "SCISSORS")
  end

end
