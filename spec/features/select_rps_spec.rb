feature 'loading play page' do
  scenario 'expect rock, paper, scissors to be choices' do
    setup_players('Vic', 'Bob') # will redirect to '/play'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
    Game.instance.reset_players
  end

  scenario 'expect prompt asking first player to select choice' do
    setup_players('Vic', 'Bob') # will redirect to '/play'
    expect(page).to have_content 'Vic - please select your choice'
    Game.instance.reset_players
  end
end
