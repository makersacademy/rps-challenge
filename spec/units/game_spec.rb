describe Game do
  let(:player_1_double) { double :player, name: "Player 1" }
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
end

  # let(:name) { "Player 1"}
  # let(:player_double) { double :player, name: name }
  # let(:player_class_double) { double :player_calss, new: player_double}
  #
  # let(:game_class) { described_class }
  # let(:game) { game_class.new(player_class_double)}
  #
  # let(:rps) { "Rock" }
  # let(:player_choice_hash) { {player_double => "Rock"} }
  #
  # let(:computer_choice) { "Scissors"}
  #
  # describe '#new_player' do
  #   it 'should accept one name argument' do
  #     expect(game).to respond_to(:new_player).with(1).argument
  #   end
  #
  #   it 'should create instance of a new player' do
  #     expect(game.new_player(name)).to eq player_double
  #   end
  # end
  #
  # describe '#player' do
  #   it 'should return a player object' do
  #     game.new_player(name)
  #     expect(game.player).to eq player_double
  #   end
  # end
  #
  # describe '#add_player_choice' do
  #   it 'should record the players choice' do
  #     game.new_player(name)
  #     expect(game.add_player_choice(rps)).to eq player_choice_hash
  #   end
  # end
  #
  # describe '#player_choice' do
  #   it 'should return the player choice' do
  #     game.new_player(name)
  #     game.add_player_choice(rps)
  #     expect(game.player_choice).to eq rps
  #   end
  # end
  #
  # describe '#new_computer_player' do
  #   it 'should create and instance of a new player with name computer' do
  #     expect(game.new_computer_player).to eq player_double
  #   end
  # end
  #
  # describe '#computer' do
  #   it 'should should return a player object' do
  #     game.new_computer_player
  #     expect(game.computer).to eq player_double
  #   end
  # end
  #
  # describe '#add_computer_choice' do
  #   it 'should record a random computer choice' do
  #     game.new_computer_player
  #     allow(game).to receive(:random_computer_choice).and_return(computer_choice)
  #     expect(game.add_computer_choice).to eq computer_choice
  #   end
  # end
  #
  # describe '#computer_choice' do
  #   it 'should return the computer choice' do
  #     game.new_computer_player
  #     allow(game).to receive(:random_computer_choice).and_return(computer_choice)
  #     game.add_computer_choice
  #     expect(game.computer_choice).to eq computer_choice
  #   end
  # end
