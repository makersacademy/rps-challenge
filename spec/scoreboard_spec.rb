describe Scoreboard do
  describe '.show' do
    it 'returns all players and scores in an array' do
      connection = PG.connect(dbname: 'rpschallenge_test')

      connection.exec("INSERT INTO scoreboard VALUES('Dave', 3, 1);")
      connection.exec("INSERT INTO scoreboard VALUES('Lucy', 2, 6);")

      expected_array = [
        {id: 'Dave', gameswon: "3", gameslost: "1"},
        {id: 'Lucy', gameswon: "2", gameslost: "6"}
      ]

      expect(Scoreboard.show).to eq expected_array
    end
  end
end
