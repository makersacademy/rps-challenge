feature 'Spock mode player2', type: :feature do
  scenario 'multiplayer spock' do
    mode_two_players_spock
    click_button("rock")
    click_button("Submit")
    expect(page).to have_content 'Paco'
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
    expect(page).to have_button('spock')
    expect(page).to have_button('lizard')
  end
end