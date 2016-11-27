require 'rps'

describe RSP do
  subject(:rsp) { described_class.new }

  context '.result' do

    it 'test that draw is called when user and computer have the same call' do
      expect(rsp.responses(["Rock", "Rock"])).to eq "It is a Draw"
    end

    it 'tests that user won when user calls rock and computer calls scissors' do
      expect(rsp.responses(["Rock", "Scissors"])).to eq "Well Done, You Win!"
    end

    it 'tests that the user won when user calls paper and computer calls rock' do
      expect(rsp.responses(["Paper", "Rock"])).to eq "Well Done, You Win!"
    end

    it 'tests that the user won when user calls scissors and computer calls paper' do
      expect(rsp.responses(["Scissors", "Paper"])).to eq "Well Done, You Win!"
    end

    it 'tests that the user loses' do
      expect(rsp.responses(["Paper", "Scissors"])).to eq "Sorry but You Lose"
    end
  end
end
