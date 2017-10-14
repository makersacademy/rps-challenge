require 'game'

describe Game do
  player_name = 'Ed'
  subject(:game) { described_class.new(player_name, player_class, computer_class) }
  let(:player_class) { double(:player_class, :new => true) }
  let(:computer_class) { double(:computer_class, :new => true) }
  describe '#initialize' do
    it 'creates a new player instance' do
      expect(player_class).to receive(:new).with player_name
      Game.new(player_name, player_class, computer_class)
    end
    it 'creates a new computer instance' do
      expect(computer_class).to receive(:new)
      Game.new(player_name, player_class, computer_class)
    end
  end
end
