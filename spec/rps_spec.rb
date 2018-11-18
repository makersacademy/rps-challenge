require 'rps'

describe RPS do

  let(:player) { Player.new('Luca', :rock) }
  subject(:subject) {described_class.new(player)}


  describe '#random'do
    it { expect(subject).to respond_to :random }
  end

  describe '#players_choice'do
    it 'returns the player\'s choice' do
      expect(player.choice).to eq :rock
    end
  end

  describe '#game'do
    it 'returns the player\'s choice' do
      expect(subject.players_choice).to eq :rock
    end
  end



end
