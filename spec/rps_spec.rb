require 'rps'

describe RSP do
  subject(:rsp) { described_class.new }

  context '.result' do

    it 'test that draw is called when user and computer have the same call' do
      expect(rsp.choice(:rock, :rock)).to eq "Draw"
    end

    it 'tests that user won when user calls rock and computer calls scissors' do
      expect(rsp.choice(:rock, :scissors)).to eq "You won"
    end

    it 'tests that the user won when user calls paper and computer calls rock' do
      expect(rsp.choice(:paper, :rock)).to eq "You won"
    end

    it 'tests that the user won when user calls scissors and computer calls paper' do
      expect(rsp.choice(:scissors, :paper)).to eq "You won"
    end

    it 'tests that the user loses' do
      expect(rsp.choice(:paper, :scissors)).to eq "You lose"
    end 
  end
end
