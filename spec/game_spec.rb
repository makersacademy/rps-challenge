require 'game'

describe Game do

  let(:becka) { double :user, name: "Becka" }
  let(:game) { Game.new(becka) }

  it 'user selects a move' do
    game.player_selection(:rock)
    expect(game.player_1_move).to eq :rock
  end

  it 'computer selects a move' do
    game.player_selection(:rock)
    expect(game.player_2_move).not_to be nil
  end

  context 'determines a winner and a loser' do
    it 'rock vs scissors - rock wins' do
      game.player_selection(:rock)
      expect(game.play(game.player_1_move, :scissors)).to eq 'Becka'
    end

    it 'paper vs scissors - scissors wins' do
      game.player_selection(:paper)
      expect(game.play(game.player_1_move, :scissors)).to eq 'player_2'
    end

    it 'has a winning message' do
      game.player_selection(:rock)
      winner = game.play(game.player_1_move, :scissors)
      expect(game.winning_message(winner)).to eq "Becka won the round"
    end

    it 'has a draw message' do
      game.player_selection(:paper)
      winner = game.play(game.player_1_move, :paper)
      expect(game.winning_message(winner)).to eq "It's a draw!"
    end
  end

end
