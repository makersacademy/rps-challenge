require './lib/game'

describe Game do
  let(:leonard) { double :leonard }
  let(:sheldon) { double :sheldon }

  subject { described_class.new(leonard, sheldon) }

  context '#initialize' do
    it 'should initialize with two players' do
      expect(subject.players.length).to be 2
    end
  end
end