require 'round'

describe Round do
  let(:match) { Match.new(4, 4, [:player_one, :player_two]) }
  let(:round) { Round.new(4) }

  describe 'initialize' do
    it 'creates a collection of bouts' do
      expect(round.bouts.length).to eq(4)
    end

    it 'inherits a collection of players' do
      expect(round.players).to eq([:player_one, :player_two])
    end

    it 'has a winner' do
      expect(match).to respond_to(:winner)
    end
  end

  describe 'who_won' do
    let(:bout_one) { [double(:bout_one, winner: :player_one)] }
    let(:bout_two) { [double(:bout_two, winner: :player_two)] }
    let(:bout_tie) { [double(:bout_tie, winner: "Tied")] }

    it 'checks bouts for the player who won the most bouts: player_one' do
      expect(round.who_won(bout_one)).to eq(:player_one)
    end

    it 'checks bouts for the player who won the most bouts: player_two' do
      expect(round.who_won(bout_two)).to eq(:player_two)
    end

    it 'checks bouts for the player who won the most bouts: Tied' do
      expect(round.who_won(bout_tie)).to eq("Tied")
    end
  end

end
