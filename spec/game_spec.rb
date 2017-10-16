require './lib/game'

describe Game do
  # let(:leonard) { double :leonard }
  # let(:sheldon) { double :sheldon }

  let(:players) { [
      double(:leonard, name: 'Leonard'),
      double(:sheldon, name: 'Sheldon')]
  }

  let(:rules) { [
      double(:rock),
      double(:paper)]
  }

  subject { described_class.new(players, rules) }

  context '#initialize' do
    it 'should initialize with two players' do
      expect(subject.players.length).to be 2
    end
  end

  context '#turn' do
    it 'should change player' do
      expect { subject.turn('rock') }.to change { subject.current_player }.to eq players[1]
    end
  end

  context '#calculate win' do
    it 'should calculate winner' do
      subject.turn('rock')
      subject.turn('paper')
      allow(players).to receive(:[]).and_return(players[1])
      expect(subject.calculate_win).to eq players[1]
    end
  end
end
