require 'rockpaperscissors'

describe Rockpaperscissors do

  describe 'computer opponent' do
    it 'computer opponent returns :rock, :paper, :scissors, :spock, or :lizard' do
      expect(subject.computer_choice).to eq(:rock).or eq(:paper).or eq(:scissors).or eq(:lizard).or eq(:spock)
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
    it 'returns :spock when spock selected' do
      expect(subject.spock).to eq(:spock)
    end
    it 'returns :lizard when lizard selected' do
      expect(subject.lizard).to eq(:lizard)
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

  describe 'returns draw' do
    it 'returns :draw if players choose same' do
      expect(subject.winner(:rock, :rock)).to eq(:draw)  
    end
  end
end
