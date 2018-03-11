require 'game'

describe Game do

  let(:player1) { double(name: 'George') }
  let(:player2) { double(name: 'Charles') }

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
      expect(subject.player1).to receive(:choose).with("Rock")

      subject.choose("r")
    end

    it 'sets player2_choice' do
      expect(subject.player2).to receive(:choose).with("Rock")

      subject.switch
      subject.choose("r")
    end

  end

  describe '#switch' do

    it "sets turn == player1 on ini" do
      subject.switch

      expect(subject.turn).to eq player2
    end

  end

  describe '#result' do

    it "Rock beats scissors" do
      allow(subject.player1).to receive(:choice).and_return 'Rock'
      allow(subject.player2).to receive(:choice).and_return 'Scissors'

      expect(subject.result).to eq('George won!')
    end

    it "Paper beats rock" do
      allow(subject.player1).to receive(:choice).and_return 'Rock'
      allow(subject.player2).to receive(:choice).and_return 'Paper'

      expect(subject.result).to eq('Charles won!')
    end

    it "Scissors beats paper" do
      allow(subject.player1).to receive(:choice).and_return 'Scissors'
      allow(subject.player2).to receive(:choice).and_return 'Paper'

      expect(subject.result).to eq('George won!')
    end

    it "should say draw" do
      allow(subject.player1).to receive(:choice).and_return 'Rock'
      allow(subject.player2).to receive(:choice).and_return 'Rock'

      expect(subject.result).to eq("DRAW")
    end

    it "should say draw" do
      allow(subject.player1).to receive(:choice).and_return 'Paper'
      allow(subject.player2).to receive(:choice).and_return 'Paper'

      expect(subject.result).to eq("DRAW")
    end

    it "should say draw" do
      allow(subject.player1).to receive(:choice).and_return 'Scissors'
      allow(subject.player2).to receive(:choice).and_return 'Scissors'

      expect(subject.result).to eq("DRAW")
    end

  end

end
