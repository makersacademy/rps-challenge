describe Game do
  it 'starts a game with a player' do
    # Setup
    player = double :player
    # Exercise & Verify
    expect { Game.new(player) }.not_to raise_error
  end

  it 'can call the randomizer for a random choice' do
    # Setup
    randomizer = double :randomizer
    player = double :player
    game = Game.new(player, randomizer)
    # Verify
    expect(randomizer).to receive(:result).and_return("Rock")
    # Exercise
    computers_choice = game.computers_choice
  end


  # it 'can tell you the winner' do
  #   # Setup
  #   player = double :player
  #   game = Game.new(player)
  #   player.selects("Rock")
  #
  #   # Exercise
  #   winner = game.winner
  #   # Verify
  #   expect(winner).to eq "Rob"
  # end
end
