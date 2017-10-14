require './lib/game'

describe Game do
  let(:leonard) { double :leonard }
  let(:sheldon) { double :sheldon }

  subject { described_class.new(leonard, sheldon) }

  context '#initialize' do
    it 'should have more than one player' do
      expect(subject.players.length).to be > 1
    end
  end
end