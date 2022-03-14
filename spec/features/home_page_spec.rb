feature 'setup game' do
  scenario '2 players can see their name' do
    setup_players('Vic', 'Bob') # will redirect to '/play'
    expect(page).to have_content 'Vic vs. Bob'
    Game.instance.reset_turns
    Game.instance.reset_players
  end

  # Add an error handler here for clicking submit with no names entered

end
