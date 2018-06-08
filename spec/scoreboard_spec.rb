describe Scoreboard do
  describe '.show' do
    it 'returns all players and scores in an array' do
      # connection = PG.connect(dbname: 'rpschallenge_test')

      Scoreboard.addscore(id: 'Dave', gameswon: 3, gameslost: 1)
      Scoreboard.addscore(id: 'Lucy', gameswon: 2, gameslost: 6)

      expected_array = [
        {id: 'Dave', gameswon: "3", gameslost: "1"},
        {id: 'Lucy', gameswon: "2", gameslost: "6"}
      ]

      expect(Scoreboard.show).to eq expected_array
    end
  end

  describe '.addscore' do
    context 'when the user doesnt already exist' do
      it 'adds the new user with their score to the scoreboard' do
        new_result = {id: "Dave", gameswon: "1", gameslost: "0"}
        Scoreboard.addscore(id: 'Dave', gameswon: 1, gameslost: 0)
        expect(Scoreboard.show).to include new_result
      end
    end

    context 'when the user already exists' do
      it 'updates the users score' do
        # Setup
        Scoreboard.addscore(id: 'Rob', gameswon: 1, gameslost: 0)
        # Exercise
        Scoreboard.addscore(id: 'Rob', gameswon: 1, gameslost: 0)
        # Verify
        expect(Scoreboard.show).to include({id: "Rob", gameswon: "2", gameslost: "0"})
      end
    end
  end
end
