require_relative '../lib/game'

describe Game do
  subject(:game) {described_class.new(player1, player2)}

  let(:player1) {double :player1, c_rps: :paper}
  let(:player2) {double :player2, c_rps: :rock}

  before do
    allow(game).to receive(:reset) {nil}
    allow(game).to receive(:random_rps) {"rock"}
  end

  describe '#auto_choose' do
    it "sends a random rps to player class" do
      expect(player2).to receive(:sel_rock)
      game.auto_choose
    end
  end

  describe '#winner' do
    it "returns the winner" do
      expect(game.winner).to eq player1
    end
  end

end
