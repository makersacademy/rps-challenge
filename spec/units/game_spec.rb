describe Game do
  let(:player_1_double) { double :player, name: "Player 1", choice: "Rock" }
  let(:player_2_double) { double :player, name: "Computer" }
  let(:game_class) { described_class }
  let(:game) { game_class.new(player_1_double, player_2_double) }

  describe ".new" do
    it 'should accept two player arguments' do
      expect(game_class).to respond_to(:new).with(2).arguments
    end

    it 'should record both players in a players array' do
      expect(game.players).to eq [player_1_double, player_2_double]
    end
  end

  describe ".player_1" do
    it 'should return the player_1 object' do
      expect(game.player_1).to eq player_1_double
    end
  end

  describe ".player_2" do
    it 'should return the player_2 object' do
      expect(game.player_2).to eq player_2_double
    end
  end

  describe ".random_choice" do
    let(:random_choice) { "Scissors" }
    it 'should return a random choice' do
      allow(game).to receive(:rand).and_return(2)
      expect(game.random_choice).to eq random_choice
    end
  end

  describe ".declare_winner" do
    context "Player 1: Rock vs Player 2: Scissors" do
      let(:player_2_double) { double :player, name: "Computer", choice: "Scissors" }
      it 'should return the name of the winning player' do
        expect(game.declare_winner).to eq 'Player 1 Wins'
      end
    end

    context "Player 1: Rock vs Computer: Paper" do
      let(:player_2_double) { double :player, name: "Computer", choice: "Paper" }
      it 'should return the name of the winning player' do
        expect(game.declare_winner).to eq 'Computer Wins'
      end
    end

    context "Player 1: Rock vs Computer: Rock" do
      let(:player_2_double) { double :player, name: "Computer", choice: "Rock" }
      it 'should return the name of the winning player' do
        expect(game.declare_winner).to eq 'Draw'
      end
    end
  end
end
