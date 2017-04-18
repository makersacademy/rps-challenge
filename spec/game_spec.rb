require 'game'

  describe Game do
    subject(:game) { Game.new(player1)}
    let(:player1) {double(:player1, name: 'Aday', sign_chosen: :rock)}
    let(:player2) {double(:player2)}

  describe "Initialization" do
    it "Display first player" do
    	expect(game.player1).to eq player1
    end
  end

  describe 'Artificial rival' do
    it 'Gives an aleatory sign' do
      game.aleatory_rival
      expect([:rock, :paper, :scissors]).to include(game.aleatory_rival)
    end
  end

  describe 'Player 1 vs machine' do
    it 'Player1 wins with Rock against Scissors' do
      game.aleatory_rival
      expect(['Aday', 'No winner', 'Machine']).to include(game.outcome)
    end
  end
end