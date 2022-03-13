feature 'Welcome Page' do 
  scenario 'entering a player name displays it on a welcome page' do
    setup_1_player('Marketeer 1')
    expect(page).to have_content 'Hello Marketeer 1'
    Game.instance.reset
  end

  scenario 'playing as a single player causes a computer controlled player to be generated' do
    setup_1_player('Marketeer 1')
    expect(page).to have_content 'You are playing against the Computer'
    Game.instance.reset
  end
end
