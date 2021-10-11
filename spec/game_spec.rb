require 'game'

describe Game do
  let(:user){ double :user, :name => "User"}
  let(:player2) { double :computer, :name => "Player 2"}
  let(:computer){ double :computer, :name => "Player 2"}
  subject(:game) { described_class.new(user, computer) }
  let(:multigame) { described_class.new(user, player2) }

  describe "#init" do
    it 'retrieves the user' do
      expect(subject.user).to eq user
    end

    it 'retrieves the computer' do
      expect(subject.computer).to eq computer
    end

    it 'defaults winner to nil' do
      expect(subject.winner).to eq nil
    end
  end

  describe "#winner" do
    it 'user wins with rock' do
      allow(computer).to receive(:hand) { 'rock' }
      expect(subject.who_won('paper')).to eq 'User wins!'
    end

    it 'user wins with paper' do
      allow(computer).to receive(:hand) { 'paper' }
      expect(subject.who_won('scissors')).to eq 'User wins!'
    end

    it 'user wins with scissors' do
      allow(computer).to receive(:hand) { 'scissors' }
      expect(subject.who_won('rock')).to eq 'User wins!'
    end

    it 'computer wins with rock' do
      allow(computer).to receive(:hand) { 'rock' }
      expect(subject.who_won('scissors')).to eq 'Computer wins!'
    end

    it 'computer wins with paper' do
      allow(computer).to receive(:hand) { 'paper' }
      expect(subject.who_won('rock')).to eq 'Computer wins!'
    end

    it 'computer wins with scissors' do
      allow(computer).to receive(:hand) { 'scissors' }
      expect(subject.who_won('paper')).to eq 'Computer wins!'
    end

    it 'player 2 wins with rock' do
      allow(player2).to receive(:hand) { 'rock' }
      expect(subject.multi_who_won('scissors', 'rock')).to eq 'Player 2 wins!'
    end

    it 'player 2 wins with paper' do
      allow(player2).to receive(:hand) { 'paper' }
      expect(subject.multi_who_won('rock', 'paper')).to eq 'Player 2 wins!'
    end

    it 'player2  wins with scissors' do
      allow(player2).to receive(:hand) { 'scissors' }
      expect(subject.multi_who_won('paper', 'scissors')).to eq 'Player 2 wins!'
    end
  end

  describe "#draw" do
    it 'same hands are shown' do
      allow(computer).to receive(:hand) { 'rock' }
      expect(subject.who_won('rock')).to eq 'we have a draw'
    end
  end
end