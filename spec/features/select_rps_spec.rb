feature 'loading play page first time' do
  scenario 'expect rock, paper, scissors to be choices' do
    setup_players('Vic', 'Bob') # will redirect to '/play'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
    Game.instance.reset_turns
    Game.instance.reset_players
  end

  scenario 'expect prompt asking first player to select choice' do
    setup_players('Vic', 'Bob') # will redirect to '/play'
    expect(page).to have_content 'Vic - please select your choice'
    Game.instance.reset_turns
    Game.instance.reset_players
  end
end

feature 'loading play page second time' do
  scenario 'expect second player to be prompted' do
    setup_players('Vic', 'Bob') # will redirect to '/play'
    choose('Rock')
    click_on('submit')
    expect(page).to have_content 'Bob - please select your choice'
    Game.instance.reset_turns
    Game.instance.reset_players
  end

  scenario 'expect second player inputting choice to redirect to result page' do
    setup_players('Vic', 'Bob') # will redirect to '/play'
    choose('Rock')
    click_on('submit')
    choose('Rock')
    click_on('submit')
    expect(page).to have_content 'The winner is'
    Game.instance.reset_turns
    Game.instance.reset_players
  end

end
