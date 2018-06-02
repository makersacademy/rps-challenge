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

  it 'player can win' do
    # Setup
    player = double :player
    randomizer = double :randomizer
    game = Game.new(player, randomizer)
    game.players_choice("Rock")
    allow(randomizer).to receive(:result).and_return("Scissors")
    game.computers_choice
    # Exercise
    winner = game.winner
    # Verify
    expect(winner).to eq "Player wins"
  end

  it 'player can lose' do
    # Setup
    player = double :player
    randomizer = double :randomizer
    game = Game.new(player, randomizer)
    game.players_choice("Paper")
    allow(randomizer).to receive(:result).and_return("Scissors")
    game.computers_choice
    # Exercise
    winner = game.winner
    # Verify
    expect(winner).to eq "Computer wins"
  end

  it 'there can be a draw' do
    # Setup
    player = double :player
    randomizer = double :randomizer
    game = Game.new(player, randomizer)
    game.players_choice("Paper")
    allow(randomizer).to receive(:result).and_return("Paper")
    game.computers_choice
    # Exercise
    winner = game.winner
    # Verify
    expect(winner).to eq "Draw"
  end
end
