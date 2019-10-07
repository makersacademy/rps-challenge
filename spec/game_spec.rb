require 'game'

describe Game do
  let(:player_1) { double(:player_1, name: "Cinderella") }
  let(:player_2) { double(:player_2, name: "Bot") }
  subject(:game) { Game.new(player_1, player_2) }

  it "stores player names" do
    expect(subject.player_1.name).to eq "Cinderella"
    expect(subject.player_2.name).to eq "Bot"
  end

  it "stores player moves" do
    allow(player_1).to receive(:shape).and_return("Rock")
    allow(player_2).to receive(:shape).and_return("Scissors")
    expect(subject.player_1.shape).to eq "Rock"
    expect(subject.player_2.shape).to eq "Scissors"
  end

  describe '#result' do
    it 'player wins' do
      allow(player_1).to receive(:shape).and_return("Rock")
      allow(player_2).to receive(:shape).and_return("Scissors")
      expect(subject.result).to eq player_1
    end

    it 'player wins' do
      allow(player_1).to receive(:shape).and_return("Paper")
      allow(player_2).to receive(:shape).and_return("Rock")
      expect(subject.result).to eq player_1
    end

    it 'player wins' do
      allow(player_1).to receive(:shape).and_return("Scissors")
      allow(player_2).to receive(:shape).and_return("Paper")
      expect(subject.result).to eq player_1
    end

    it 'player loses' do
      allow(player_1).to receive(:shape).and_return("Scissors")
      allow(player_2).to receive(:shape).and_return("Rock")
      expect(subject.result).to eq player_2
    end

    it 'player loses' do
      allow(player_1).to receive(:shape).and_return("Rock")
      allow(player_2).to receive(:shape).and_return("Paper")
      expect(subject.result).to eq player_2
    end

    it 'player loses' do
      allow(player_1).to receive(:shape).and_return("Paper")
      allow(player_2).to receive(:shape).and_return("Scissors")
      expect(subject.result).to eq player_2
    end

    it 'player draws' do
      allow(player_1).to receive(:shape).and_return("Rock")
      allow(player_2).to receive(:shape).and_return("Rock")
      expect(game.result).to eq "draw"
    end

    it 'player draws' do
      allow(player_1).to receive(:shape).and_return("Paper")
      allow(player_2).to receive(:shape).and_return("Paper")
      expect(game.result).to eq "draw"
    end

    it 'player draws' do
      allow(player_1).to receive(:shape).and_return("Scissors")
      allow(player_2).to receive(:shape).and_return("Scissors")
      expect(game.result).to eq "draw"
    end
  end
end
