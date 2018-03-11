require 'game'

describe Game do

  let(:player1) { double() }
  let(:player2) { double() }
  subject(:game) { described_class.new(player1, player2) }

  describe '#new' do

    it "stores player 1" do
      expect(subject.player1).to eq player1
    end

    it "stores player 2" do
      expect(subject.player2).to eq player2
    end

    it "starts with turn == player1" do
      expect(subject.turn).to eq player1
    end

  end

  describe '#choose' do

    it 'sets player1_choice' do
      expect(subject.player1).to receive(:choose).with("rock")

      subject.choose("rock")
    end

    it 'sets player2_choice' do
      expect(subject.player2).to receive(:choose).with("rock")

      subject.switch
      subject.choose("rock")
    end

  end

  describe '#switch' do

    it "sets turn == player1 on ini" do
      subject.switch

      expect(subject.turn).to eq player2
    end

  end




end
