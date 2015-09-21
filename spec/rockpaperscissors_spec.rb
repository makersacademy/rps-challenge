require 'rockpaperscissors'


describe Rockpaperscissors do

  describe 'returns winner' do
    it 'rock is beaten by paper' do
      expect(subject.winner('Bob', :rock, 'Alice', :paper)).to eq("Alice")
    end

    it 'rock is beaten by spock' do
      expect(subject.winner('Bob', :rock, 'Alice', :spock)).to eq("Alice")
    end

    it 'scissors is beaten by rock' do
      expect(subject.winner('Bob', :rock, 'Alice', :scissors)).to eq("Bob")
    end

    it 'scissors is beaten by spock' do
      expect(subject.winner('Bob', :spock, 'Alice', :scissors)).to eq("Bob")
    end

    it 'paper is beaten by scissors' do
      expect(subject.winner('Bob', :paper, 'Alice', :scissors)).to eq("Alice")
    end

    it 'paper is beaten by lizard' do
      expect(subject.winner('Bob', :paper, 'Alice', :lizard)).to eq("Alice")
    end

    it 'lizard is beaten by scissors' do
      expect(subject.winner('Bob', :scissors, 'Alice', :lizard)).to eq("Bob")
    end

    it 'lizard is beaten by rock' do
      expect(subject.winner('Bob', :rock, 'Alice', :lizard)).to eq("Bob")
    end

    it 'spock is beaten by lizard' do
      expect(subject.winner('Bob', :spock, 'Alice', :lizard)).to eq("Alice")
    end

    it 'spock is beaten by paper' do
      expect(subject.winner('Bob', :spock, 'Alice', :paper)).to eq("Alice")
    end
  end

  describe 'returns draw' do
    it 'returns :draw if players choose same' do
      expect(subject.winner('Bob', :rock, 'Alice', :rock)).to eq(:draw)
    end
  end
end
