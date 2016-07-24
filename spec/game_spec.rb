require "game"

describe Game do
  subject(:game) { described_class.new(player1, player2, "computer", rules) }
  let(:player1) { double(:player, name: "Player 1") }
  let(:player2) { double(:computerplayer, name: "Computer") }
  let(:rules) { double(:rules) }

  context '#name_of' do
    it "returns the name of a player" do
      expect(game.name_of(player1)).to eq player1.name
    end
  end

  context '#action' do
    it 'should return the action selected' do
      option = :rock
      allow(player1).to receive(:move).and_return(:rock)
      expect(game.action(player1, option)).to eq option
    end
  end

  # context '#winner shows the player won' do
  #
  #   it 'shows the player name' do
  #     allow(rules).to receive(:winner).and_return("Player 1")
  #     expect(game.winner(player1, player2)).to eq "Player 1"
  #   end
  # end
  #
  # context '#winner shows draw' do
  #   it 'if both select the same action' do
  #     allow(rules).to receive(:winner).and_return("Draw")
  #     expect(game.winner(player1, player2)).to eq "Draw"
  #   end
  # end

end
