require 'rps'

describe RSP do
  subject(:rsp) { described_class.new }

  context '.result' do

    it 'test that draw is called when user and computer have the same call' do
      expect(rsp.responses([:rock, :rock])).to eq "Draw"
    end

    it 'tests that user won when user calls rock and computer calls scissors' do
      expect(rsp.responses([:rock, :scissors])).to eq "You won"
    end

    it 'tests that the user won when user calls paper and computer calls rock' do
      expect(rsp.responses([:paper, :rock])).to eq "You won"
    end

    it 'tests that the user won when user calls scissors and computer calls paper' do
      expect(rsp.responses([:scissors, :paper])).to eq "You won"
    end

    it 'tests that the user loses' do
      expect(rsp.responses([:paper, :scissors])).to eq "You lose"
    end
  end
end
