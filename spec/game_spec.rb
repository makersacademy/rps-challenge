require 'game'

describe Game do
  
  subject(:game) { described_class.new(player_name, computer) }
  let(:player_name) { double 'Player'}
  let(:computer) { double 'Computer' }
  
  describe '#initialize' do
    it 'creates a new game with a player' do
      expect(game.player_name).to eq player_name
    end

    it 'creates a new game with the computer' do
      expect(game.computer).to eq computer
    end
  end

  describe '.instance' do
    it { is_expected.to be_instance_of(Game) }
  end
  
end