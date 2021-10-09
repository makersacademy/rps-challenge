require 'game'

describe Game do
  let(:user){ double :user}
  let(:computer){ double :computer }
  subject(:game) { described_class.new(user, computer) }

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
      expect(subject.who_won('paper')).to eq 'user'
    end

    it 'user wins with paper' do
      allow(computer).to receive(:hand) { 'paper' }
      expect(subject.who_won('scissors')).to eq 'user'
    end

    it 'user wins with scissors' do
      allow(computer).to receive(:hand) { 'scissors' }
      expect(subject.who_won('rock')).to eq 'user'
    end

    it 'computer wins with rock' do
      allow(computer).to receive(:hand) { 'rock' }
      expect(subject.who_won('scissors')).to eq 'computer'
    end

    it 'computer wins with paper' do
      allow(computer).to receive(:hand) { 'paper' }
      expect(subject.who_won('rock')).to eq 'computer'
    end

    it 'computer wins with scissors' do
      allow(computer).to receive(:hand) { 'scissors' }
      expect(subject.who_won('paper')).to eq 'computer'
    end
  end

  describe "#draw" do
    it 'same hands are shown' do
      allow(computer).to receive(:hand) { 'rock' }
      expect(subject.who_won('rock')).to eq 'draw'
    end
  end
end