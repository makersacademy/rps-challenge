feature 'Choices available, spock mode, player1', type: :feature do
  scenario 'one player spock' do
    mode_one_player_spock
    expect(page).to have button('choice_lizard')
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
    expect(page).to have button('spock')

  end

  scenario 'multiplayer spock' do
    mode_two_players_spock
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
    expect(page).to have button('spock')
    expect(page).to have button('lizard')
  end
end