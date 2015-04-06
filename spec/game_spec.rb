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
      allow(player1).to receive(:choose)
      allow(player2).to receive(:choose)
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
    it 'knows if player1 wins' do
      allow(player1).to receive(:chosen_element).and_return(:paper)
      allow(player2).to receive(:chosen_element).and_return(:rock)
      game.player1.choose :paper
      game.player2.choose :rock
      expect(game.play).to eq "bob Wins!"
    end
    it 'knows if player2 wins' do
      allow(player1).to receive(:chosen_element).and_return(:rock)
      allow(player2).to receive(:chosen_element).and_return(:paper)
      game.player1.choose :rock
      game.player2.choose :paper
      expect(game.play).to eq "john Wins!"
    end
    it 'knows if is a draw' do
      allow(player1).to receive(:chosen_element).and_return(:rock)
      allow(player2).to receive(:chosen_element).and_return(:rock)
      game.player1.choose :rock
      game.player2.choose :rock
      expect(game.play).to eq "Draw!"
    end
  end
end