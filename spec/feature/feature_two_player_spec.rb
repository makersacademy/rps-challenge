feature 'Greets both players and asks for player1s choice' do
  scenario 'Player 1 and 2 have entered their names' do
    sign_in_two_players
    expect(page).to have_content("Taran vs Zena")
    expect(page).to have_button("Submit")
  end
  scenario 'Player 1 makes their choice, asks Player 2 for theirs' do
    sign_in_two_players
    select 'Rock', from: 'choices'
    click_button('Submit')
    expect(page).to have_content("Zena")
  end
  scenario 'Both players choose Rock' do
    sign_in_two_players
    selection_helper("Rock", "Rock")
    expect(page).to have_content("Draw!")
  end
  scenario 'Player1 wins' do
    sign_in_two_players
    selection_helper("Rock", "Scissors")
    expect(page).to have_content("Taran won")
  end
  scenario 'Player2 wins' do
    sign_in_two_players
    selection_helper("Rock", "Paper")
    expect(page).to have_content("Taran lost")
  end
end
feature 'extended options to include Lizard and Spock' do
  scenario 'Player2 wins with Spock' do
    sign_in_two_players
    selection_helper("Rock", "Spock")
    expect(page).to have_content("Taran lost")
  end
  scenario 'Player1 loses with Spock' do
    sign_in_two_players
    selection_helper("Spock", "Paper")
    expect(page).to have_content("Taran lost")
  end
end
feature 'Homepage welcomes players back' do
  scenario 'Players play one game and press play again' do
    sign_in_two_players
    selection_helper("Spock", "Paper")
    click_button('play')
    expect(page).to have_content("Welcome back!")
  end
end
