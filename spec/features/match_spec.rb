require 'match'

describe Match do
  let(:player) { double :player }
  let(:player_class) { double :player_class, new: player }
  let(:judge) { double :judge }
  let(:adjudicator_class) { double :adjudicator_class, new: judge }
  let(:match) {
    Match.new("Henry",
    player_class: player_class,
    adjudicator_class: adjudicator_class)
  }

  describe '#game_type' do
    it 'expects game type to be single player by default' do
      expect(match.game_type).to eq("single")
    end
  end

  describe '#do_move' do
    it 'tells a player to make a move' do
      allow(match.play2).to receive(:make_random_move)
      expect(match.play1).to receive(:make_move)
      match.do_move(match.play1, "ROCK")
    end

    it 'tells the computer player to make a random move if single player' do
      allow(match.play1).to receive(:make_move)
      expect(match.play2).to receive(:make_random_move)
      match.do_move(match.play1, "ROCK")
    end
  end

  describe '#see_move' do
    it 'asks the player what move they made, and sees ROCK' do
      allow(match.play1).to receive(:move) { "ROCK" }
      expect(match.see_move(match.play1)).to eq "ROCK"
    end
  end

  describe '#find_winner' do
    it 'asks the adjudicator to find the winner' do
      allow(judge).to receive(:result)
      expect(judge).to receive(:who_wins)
      match.find_winner
    end
  end
end
