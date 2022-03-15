feature 'Welcome Page' do 
  scenario 'entering a player name displays it on a welcome page' do
    setup_1_player('Marketeer 1')
    expect(page).to have_content 'Hello Marketeer 1'
    Game.instance.reset
  end

  scenario 'entering a player name displays it on a welcome page' do
    setup_1_player('Marketeer 1')
    expect(page).to have_content 'Hello Marketeer 1'
    Game.instance.reset
  end
 
  scenario 'not entering a player name causes it to default' do
    setup_2_players('', '')
    expect(page).to have_content 'Hello Player 1'
    expect(page).to have_content 'Hello Player 2'
    Game.instance.reset
  end
end
