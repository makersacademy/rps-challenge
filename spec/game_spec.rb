describe Game do
  let(:randomizer) { double :randomizer}
  let(:determinewinner) { double :determinewinner }
  let(:player) { double :player }
  subject(:game) { described_class.new(player, randomizer ,determinewinner) }

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
    it 'can reveal the winner' do
      # Setup
      game.players_choice("Rock")
      allow(randomizer).to receive(:result).and_return("Scissors")
      game.computers_choice
      allow(determinewinner).to receive(:result).and_return("Player wins")
      # Exercise & verify
      expect(game.winner).to eq "Player wins"
    end
  end
end
