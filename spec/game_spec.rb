require 'game'

describe Game do
  let(:player1) { double :player, name: 'bob' }
  let(:player2) { double :player, name: 'john' }
  let(:game) { described_class.new player1, player2 }
  context 'when created' do
    it 'has a player 1' do
      expect(game.player1.name).to eq 'bob'
    end
    it 'has a player 2' do
      expect(game.player2.name).to eq 'john'
    end
  end

  context 'after been created' do
    before do
      allow(player1).to receive(:chose)
      allow(player2).to receive(:chose)
      allow(player1).to receive(:ready?).and_return(true)
      allow(player2).to receive(:ready?).and_return(true)
    end
    it 'can check if the players are ready to play' do
      expect(game).to be_ready
    end
    it 'can check if the players are not ready to play' do
      allow(player2).to receive(:ready?).and_return(false)
      expect(game).not_to be_ready
    end
    it 'can be played' do
      game.player1.chose :rock
      game.player2.chose :paper
      allow(player1).to receive(:chosed_element).and_return(:rock)
      allow(player2).to receive(:chosed_element).and_return(:paper)
      expect(player1).to receive(:lose)
      expect(player2).to receive(:win)
      game.play
    end
  end
end