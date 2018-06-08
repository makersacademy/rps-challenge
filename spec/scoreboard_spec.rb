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
    it 'adds the result of a game to the scoreboard' do
      new_result = {id: "Dave", gameswon: "1", gameslost: "0"}
      Scoreboard.addscore(id: 'Dave', gameswon: 1, gameslost: 0)
      expect(Scoreboard.show).to include new_result
    end
  end
end
