require 'game'

describe Game do

  let(:player_class) { double :player_class, new: player }
  let(:player) { double :player, name: "Pete", score: 0, won: true } 
  let(:random_class) { double :random_class, new: random }
  let(:random) { double :random, pick: 'Rock' }
  let(:subject) { Game.new(player, "Computer", player_class, random_class) }

  it 'should store players' do
    expect(subject.player1).to eq player
  end

  context 'when taking a turn' do

    it 'should give a result (win)' do
      subject.turn("Rock", "Scissors")
      expect(subject.result).to eq "You Won!"
    end

    it 'should give a result (lose)' do
      subject.turn("Rock", "Paper")
      expect(subject.result).to eq "You Lost!"
    end

    it 'should give a result (draw)' do
      subject.turn("Rock", "Rock")
      expect(subject.result).to eq "It's a draw!"
    end

  end

end
