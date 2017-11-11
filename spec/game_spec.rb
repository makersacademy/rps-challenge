require 'game'
describe Game do
  class FakeTurn
    def finish
      1
    end
  end

  let(:game) { described_class.new('Marie') }
  let(:player) { double 'fake player', name: 'Marie' }
  before(:each) { stub_const('Turn', FakeTurn) }

  describe '#initialize' do
    it 'should initialize with a player' do
      expect(game.player.name).to eq 'Marie'
    end
  end
  describe '#play' do
    it 'should generate a turn instance' do
      expect(game.play).to eq 'Play!'
    end
  end
  describe '#finish_turn' do
    it 'should add a point to the score if a player wins the turn' do
      game.play
      expect { game.finish_turn }.to change { game.score }.by 1
    end
  end
end
