require 'game'

describe Game do
  subject { Game.new :player1, :player2 }

  it 'responds to all_choices' do
    expect(subject).to respond_to :all_choices?
  end

  it 'returns true if choce1 and choice2 are empty' do
    game = Game.new :player1, :player2
    game.choice1 = :r
    game.choice2 = :r
    expect(game.all_choices?).to eq true
  end

  it 'responds to play' do
    expect(subject).to respond_to :play
  end

  it 'compares choices from 2 players to determine winner' do
    game = Game.new :player1, :player2
    game.choice1 = :r
    game.choice2 = :r
    expect(game.play).to eq 'Draw!'
  end
end
