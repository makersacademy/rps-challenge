require 'game'

describe Game do
  subject(:game) {described_class.new(player1)}
  let(:computer) {double :computer}
  let(:player1) {double :player1}
  let(:player2) {double :player2}

  describe '#initialize' do
    it 'assigns a player' do
      expect(game.player1).to eq player1
    end
  end
end
  #
  #   it 'assigns player2' do
  #     expect(game.player2).to eq player2
  #   end
  # end
