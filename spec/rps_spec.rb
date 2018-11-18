require 'rps'

describe RPS do

  let(:player) { Player.new('Luca', :rock) }
  subject(:subject) { described_class.new(player) }

  describe '#random'do
    it { expect(subject).to respond_to :random }
  end

  describe '#players_choice'do
    it 'returns the player\'s choice' do
      expect(subject.players_choice).to eq :rock
    end
  end


  describe '#play'do
    it 'returns a draw message' do
      allow(RPS::WEAPONS).to receive(:sample) { :rock }
      expect(subject.play).to eq 'It looks like we are going no where!'
    end
  end

  describe '#result'do
    it 'returns a message for the winner' do
      allow(RPS::RULES).to receive(:include?) { true }
      expect(subject.result).to eq "You saved us, John Connor!!! #{player.choice} beats #{subject.random}"
    end

    it 'returns a message for the loser' do
      allow(RPS::RULES).to receive(:include?) { false }
      expect(subject.result).to eq "Good job, John Connor.. The machines are rising... #{subject.random} beats #{player.choice}"
    end
  end
end
