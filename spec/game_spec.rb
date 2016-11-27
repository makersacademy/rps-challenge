require 'game'

describe Game do
  subject(:game) {described_class.new(player_name, computer_defense)}
  subject(:game_tie) {described_class.new(player_name, computer_rock)}
  let(:player_name) {double(:player_name)}
  let(:computer_defense) {double(:computer_defense)}
  let(:computer_rock) {double(:computer_defense)}
  before(:each) {allow(computer_rock).to receive(:counter_attack).and_return(:rock)}

  describe '#player' do
    it 'retrieves the first player' do
      expect(game.player_name).to eq player_name
    end
  end

  describe "#tie" do
    it "returns true if the player and the computer chose the same attack" do
      expect(game_tie.tie?(:rock)).to eq true

    end
  end


  describe "#result" do

    it "direct to draw if both player and computer chose rock" do
      expect(game_tie.result(:rock)).to eq :draw
    end
  end
end
