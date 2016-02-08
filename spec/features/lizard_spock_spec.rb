feature 'Extended game' do
  scenario 'can choose lizard button' do
    start_game
    click_button('Lizard')
    expect(page).to have_content("Rebecca chooses lizard")
  end

  scenario 'can choose Spock button' do
    start_game
    click_button('Spock')
    expect(page).to have_content("Rebecca chooses Spock")
  end

  scenario 'lizard loses to scissors' do
    computer_picks_scissors
    start_game
    click_button('Lizard')
    expect(page).to have_content('Scissors decapitate Lizard')
  end

  scenario 'lizard wins against paper' do
    computer_picks_paper
    start_game
    click_button('Lizard')
    expect(page).to have_content('Lizard eats Paper')
  end

  scenario 'Spock loses to lizard' do
    computer_picks_lizard
    start_game
    click_button('Spock')
    expect(page).to have_content('Lizard poisons Spock')
  end

  scenario 'Spock wins against rock' do
    computer_picks_rock
    start_game
    click_button('Spock')
    expect(page).to have_content('Spock vaporizes Rock')
  end

end