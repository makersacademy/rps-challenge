require 'game'

describe Game do

  context 'Computer can choose at random: ' do

    it { is_expected.to respond_to(:computer_choose).with(1).argument }
    it { is_expected.to respond_to :random_number }
    it { is_expected.to respond_to :random_number_again }

    it 'chooses using a random number generator up to 3' do
      x = subject.random_number
      expect(x).to be_within(3).of(3)
    end

    it 'chooses using a random number generator up to 5' do
      x = subject.random_number_again
      expect(x).to be_within(5).of(5)
    end

    it 'Rock' do
      allow(subject).to receive(:random_number).and_return(0)
      expect(subject.computer_choose(1)).to eq 'Rock'
    end

    it 'Paper' do
      allow(subject).to receive(:random_number).and_return(1)
      expect(subject.computer_choose(1)).to eq 'Paper'
    end

    it 'Scissors' do
      allow(subject).to receive(:random_number).and_return(2)
      expect(subject.computer_choose(1)).to eq 'Scissors'
    end

    it 'Lizard' do
      allow(subject).to receive(:random_number_again).and_return(3)
      expect(subject.computer_choose(2)).to eq 'Lizard'
    end

    it 'Spock' do
      allow(subject).to receive(:random_number_again).and_return(4)
      expect(subject.computer_choose(2)).to eq 'Spock'
    end

  end

  context 'Can determine in a regular game' do

    it { is_expected.to respond_to(:result).with(2).arguments }

    it 'a player winning with Rock' do
      expect(subject.result("Rock", "Scissors")).to eq "Player wins"
    end

    it 'a computer winning with Paper' do
      expect(subject.result("Paper", "Scissors")).to eq "Computer wins!"
    end

    it 'a draw' do
      expect(subject.result("Paper", "Paper")).to eq "Draw"
    end
  end

  context 'Can determine in the extended game' do

    it 'the computer winning with Rock' do
      expect(subject.result("Lizard", "Rock")).to eq "Computer wins!"
    end

    it 'the computer winning with Paper' do
      expect(subject.result("Spock", "Paper")).to eq "Computer wins!"
    end

    it 'a player winning with Scissors' do
    expect(subject.result("Scissors", "Lizard")).to eq "Player wins"
    end

    it 'a player winning with Lizard' do
      expect(subject.result("Lizard", "Paper")).to eq "Player wins"
    end

    it 'the player winning with Spock' do
      expect(subject.result("Spock", "Rock")).to eq "Player wins"
    end

    it 'a draw' do
      expect(subject.result("Spock", "Spock")).to eq "Draw"
    end
  end

end