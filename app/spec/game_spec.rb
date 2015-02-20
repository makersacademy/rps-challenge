require 'game'

describe 'Game' do

  let(:player1) {double :player}
  let(:player2) {double :player}
  let(:game) {Game.new(player1)}

  it 'can be initalized with 1 player.' do
    expect(game.player1).to eq player1
  end

  it 'can be initalized with 2 players.' do
    game2 = Game.new(player1,player2)
    expect(game2.player2).to eq player2
  end

  it 'can add a player if there is not already 2 players' do
    game.add_player(player2)
    expect(game.player2).to eq player2
  end

  it 'raises an error when trying to add a third player' do
    third_wheel = double :player
    game.add_player(player2)
    expect{game.add_player(third_wheel)}.to raise_error 'Already two people playing!'
  end

  describe 'Winning and Losing' do

    it 'knows that paper beats rock' do
      game.add_player(player2)
      allow(player1).to receive(:weapon).and_return(:ROCK)
      allow(player2).to receive(:weapon).and_return(:PAPER)
      expect(game.resolve_winner).to eq player2
    end

    it 'knows that rock beats scissors' do
      game.add_player(player2)
      allow(player1).to receive(:weapon).and_return(:SCISSORS)
      allow(player2).to receive(:weapon).and_return(:ROCK)
      expect(game.resolve_winner).to eq player2
    end

    it 'knows that scissors beats paper' do
      game.add_player(player2)
      allow(player1).to receive(:weapon).and_return(:PAPER)
      allow(player2).to receive(:weapon).and_return(:SCISSORS)
      expect(game.resolve_winner).to eq player2
    end
  end



end