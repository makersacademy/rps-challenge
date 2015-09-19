require 'Rockpaperscissors'

describe Rockpaperscissors do

  describe 'computer opponent' do
    it 'computer opponent returns :rock, :paper or :scissors' do
      expect(subject.computer_choice).to eq(:rock).or eq(:paper).or eq(:scissors)
    end
  end

  describe 'player_choice' do
    it 'returns :rock when rock selected' do
      expect(subject.rock).to eq(:rock)
    end
    it 'returns :paper when paper selected' do
      expect(subject.paper).to eq(:paper)
    end
    it 'returns :scissors when scissors selected' do
      expect(subject.scissors).to eq(:scissors)
    end
  end

  describe 'returns winner' do
    it 'paper beats rock' do
      expect(subject.winner(:rock, :paper)).to eq(:player2)
    end

    it 'rock beats scissors' do
      expect(subject.winner(:rock, :scissors)).to eq(:player1)
    end

    it 'scissors beats paper' do
      expect(subject.winner(:paper, :scissors)).to eq(:player2)
    end
  end

end
