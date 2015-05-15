require 'computer_choice'

describe Game do
  context 'Computer can choose at random: ' do

    it { is_expected.to respond_to :computer_choose }
    it { is_expected.to respond_to :random_number }

    it 'Rock' do
      allow(subject).to receive(:random_number).and_return(0)
      expect(subject.computer_choose).to eq 'Rock'
    end

    it 'Paper' do
      allow(subject).to receive(:random_number).and_return(1)
      expect(subject.computer_choose).to eq 'Paper'
    end

    it 'Scissors' do
      allow(subject).to receive(:random_number).and_return(2)
      expect(subject.computer_choose).to eq 'Scissors'
    end

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