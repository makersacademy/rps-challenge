feature '#game_result' do
  it 'displays the result of the game' do
    visit('/result')
  # @player_selection = "Paper"
  # computer_player = Computer.new
  # @computer_choice = "Paper"
  # game = Game.new(@player_selection, @computer_choice)
  # game_result = game.game_result(@player_selection, @computer_choice)
    expect(page).to have_content
  end
end
# not sure how to test result of game
