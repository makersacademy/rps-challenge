feature 'Choices available, classic mode, player2', type: :feature do
  scenario 'multiplayer' do
    mode_two_players_classic
    click_button("rock")
    click_button("Submit")
    expect(page).to have_content 'Paco'
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
  end
end