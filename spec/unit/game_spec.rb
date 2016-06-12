require 'game'

describe Game do
  let(:player1) {double :player, name: "name1"}
  let(:player2) {double :player, name: "name2"}
  subject(:game){described_class.new(player1,player2)}


  describe '#game_evaluation' do
    it 'tells who won the game' do
      allow(player1).to receive(:pick_play).and_return("Rock")
      allow(player2).to receive(:pick_play).and_return("Scissor")

      expect(game.evaluation).to eq "wins"
    end

    it 'tells who won the game' do
      allow(player1).to receive(:pick_play).and_return("Paper")
      allow(player2).to receive(:pick_play).and_return("Paper")

      expect(game.evaluation).to eq "ties"
    end

    it 'tells who won the game' do
      allow(player1).to receive(:pick_play).and_return("Scissor")
      allow(player2).to receive(:pick_play).and_return("Rock")

      expect(game.evaluation).to eq "loses"
    end


  end


end