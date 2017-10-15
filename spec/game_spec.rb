require './lib/game'

describe Game do
  # let(:leonard) { double :leonard }
  # let(:sheldon) { double :sheldon }

  let(:players) { [
      double(:leonard, name: 'Leonard'),
      double(:sheldon, name: 'Sheldon')]
  }

  subject { described_class.new(players) }

  context '#initialize' do
    it 'should initialize with two players' do
      expect(subject.players.length).to be 2
    end
  end

  context '#turn' do
    it 'should change player' do
      expect{subject.turn('rock')}.to change {subject.current_player}.to eq players[1]
    end
  end
end
