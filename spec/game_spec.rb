require 'computer_choice'

describe Game do
  context 'Computer can choose' do

    it { is_expected.to respond_to :computer_choose }

  end

  context 'Can determine' do

    it { is_expected.to respond_to(:result).with(2).arguments }

    it 'a player winning' do
      expect(subject.result("Rock", "Scissors")).to eq "Player wins"
    end

    it 'a computer winning' do
      expect(subject.result("Paper", "Scissors")).to eq "Computer wins"
    end

    it 'a draw' do
      expect(subject.result("Paper", "Paper")).to eq "Draw"
    end
  end
end