require 'match'

describe Match do
  let(:player) { double :player }
  let(:player_class) { double :player_class, new: player }
  let(:match) { Match.new("Henry", player_class: player_class) }

  describe '#game_type' do
    it 'expects game type to be single player by default' do
      expect(match.game_type).to eq("single")
    end
  end

  describe '#do_move' do
    it 'tells a player to make a move' do
      expect(match.play1).to receive(:make_move)
      match.do_move(match.play1, "ROCK")
    end
  end

  describe '#do_random_move' do
    it 'tells a player to make a random move' do
      expect(match.play2).to receive(:make_random_move)
      match.do_random_move(match.play2)
    end
  end

  describe '#see_move' do
    it 'asks the player what move they made, and sees ROCK' do
      allow(match.play1).to receive(:move) { "ROCK" }
      expect(match.see_move(match.play1)).to eq "ROCK"
    end
  end

end
