describe Game do
  let(:randomizer) { Randomizer.new }
  let(:player) { double :player }
  subject(:game) { described_class.new(player, randomizer) }

  it 'can tell you the players name' do
    expect(game.player).to eq player
  end

  it 'can call the randomizer for a random choice' do
    # Verify
    expect(randomizer).to receive(:result)
    # Exercise
    computers_choice = game.computers_choice
  end

  context 'can determine a winner' do
    it 'player can win' do
      # Setup
      game.players_choice("Rock")
      allow(randomizer).to receive(:result).and_return("Scissors")
      game.computers_choice
      # Exercise & verify
      expect(game.winner).to eq "Player wins"
    end
    it 'player can lose' do
      # Setup
      game.players_choice("Paper")
      allow(randomizer).to receive(:result).and_return("Scissors")
      game.computers_choice
      # Exercise & verify
      expect(game.winner).to eq "Computer wins"
    end
    it 'there can be a draw' do
      # Setup
      game.players_choice("Paper")
      allow(randomizer).to receive(:result).and_return("Paper")
      game.computers_choice
      # Exercise & Verify
      expect(game.winner).to eq "Draw"
    end
  end
end
