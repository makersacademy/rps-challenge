require 'match'

describe Match do
  let(:match) { Match.new(4, 4, [:player_one, :player_two]) }

  describe 'initialize' do
    it 'creates a collection of rounds' do
      expect(match.rounds.length).to eq(4)
    end

    it 'has a collection of players' do
      expect(match.players).to eq([:player_one, :player_two])
    end

    it 'has a winner' do
      expect(match).to respond_to(:winner)
    end
  end

  describe 'who_won' do
    let(:rounds_one) { [double(:rounds_one, winner: :player_one)] }
    let(:rounds_two) { [double(:rounds_two, winner: :player_two)] }
    let(:rounds_tie) { [double(:round1, winner: :player_one), double(:round2, winner: :player_two)] }

    it 'checks rounds for the player who won the most rounds: player_one' do
      expect(match.who_won(rounds_one)).to eq(:player_one)
    end

    it 'checks rounds for the player who won the most rounds: player_two' do
      expect(match.who_won(rounds_two)).to eq(:player_two)
    end

    it 'checks rounds for the player who won the most rounds: Tied' do
      expect(match.who_won(rounds_tie)).to eq("Tied")
    end
  end

end
