require 'game'

describe Game do

  let(:computer) {double(:computer)}
  let(:player) {double(:player)}
  subject(:game) {described_class.new(player, computer)}

  before(:example) do
    allow(player).to receive(:choice).and_return(:rock)
    allow(player).to receive(:name).and_return("Harry")
    allow(computer).to receive(:choice).and_return(:scissors)
  end

  xcontext '#name' do
    it 'returns the name of the player' do
      expect(player).to receive(:name)
      game.player.name
    end
  end

  xcontext '#player_choice' do
    it 'returns the player\'s choice' do
      expect(player).to receive(:choice)
      game.player_choice
    end
  end

  xcontext '#computer_choice' do
    it 'returns the computer\'s choice' do
      expect(computer).to receive(:choice)
      game.computer_choice
    end
  end

  context '#evaluate_winner' do
    it 'can work out who has won the game' do
      expect(game.evaluate_winner).to eq 'Harry'
    end
  end
end
