feature 'player can choose game mode' do
  scenario 'player plays vs computer' do
    play_computer
    expect(page).to have_content('Can you defeat the bot?')
  end

  scenario 'player chooses multiplayer mode' do
    play_multiplayer
    expect(page).to have_content('Loser pays a round!')
  end
end