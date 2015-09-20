require 'rockpaperscissors'


describe Rockpaperscissors do

  describe 'returns winner' do
    it 'paper beats rock' do
      expect(subject.winner('Bob', :rock, 'Alice', :paper)).to eq("Alice")
    end

    it 'rock beats scissors' do
      expect(subject.winner('Bob', :rock, 'Alice', :scissors)).to eq("Bob")
    end
  end

  describe 'returns draw' do
    it 'returns :draw if players choose same' do
      expect(subject.winner('Bob', :rock, 'Alice', :rock)).to eq(:draw)
    end
  end
end
