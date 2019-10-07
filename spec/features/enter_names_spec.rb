feature 'fill in player name' do
  scenario 'can allow a player to enter name and start a game' do
    visit ('/')
    fill_in :player_1_name, with: 'Vijay'
    click_button 'GO!'
    expect(page).to have_content "#{@player_1_name}, lets play ROCK, PAPER, SCISSORS!"
  end
end
