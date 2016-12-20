require 'game'

describe Game do
  subject(:game) {described_class.new(player,computer)}
  let(:player) {double :player}
  let(:computer) {double :computer}

  it "should be initialized with a player" do
    expect(game.player).to eq player
  end

  it "should be initialized with a computer" do
    expect(game.computer).to eq computer
  end

  context 'when #result' do

    it "should return :win if player beats computer " do
      allow(player).to receive(:choice).and_return("Rock")
      allow(computer).to receive(:choice).and_return("Scissors")
      expect(game.result).to eq :win
    end

    it "should return :lose if computer beats player" do
      allow(player).to receive(:choice).and_return("Rock")
      allow(computer).to receive(:choice).and_return("Paper")
      expect(game.result).to eq :lose
    end

    it "should return :draw if player and computer have the same choice" do
      allow(player).to receive(:choice).and_return("Rock")
      allow(computer).to receive(:choice).and_return("Rock")
      expect(game.result).to eq :draw
    end
  end


end
