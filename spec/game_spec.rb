require 'game'

describe Game do
  let(:player) {double :player, score: 0}
  # let(:computer) {double :computer, score: 0}
  subject(:game) {described_class.new(player)}

  # let(:player_move) {double :player_move}
  # let(:player_move) {double :player_move}
  # let(:computer_move_rock) {double :computer_move_rock}
  # let(:computer_move_paper) {double :computer_move_paper}

  describe '#initialize' do
    it 'should initialize with a player' do
      expect(game.player).to eq player
    end

    it 'should initialize with a computer opponent' do
      expect(game.computer).to be_a(Computer)
    end

    it 'should initialize with a list of winning moves' do
      expect(game.winning_moves).to be_a(Hash)
    end
  end

  describe 'attributes' do
    it 'returns the player\'s name' do
      allow(player).to receive(:player).and_return(player)
      expect(game.player).to eq player
    end
  end

  describe '#self.create' do
    it 'should return create an instance of the game class' do
      expect(Game.create(player)).to be_a(Game)
    end
  end

  describe '#self.instance' do
    it 'should return an instance of the game class' do
      expect(Game.instance).to be_a(Game)
    end
  end

  describe '#player_choice' do
    it 'should return a symbol' do
      expect(game.player_choice('ROCK')).to be_a(Symbol)
    end
    it 'should store the player\'s choice in player_move' do
      game.player_choice('ROCK')
      expect(game.player_move).to eq(:ROCK)
    end
  end

  describe '#computer_choice' do
    it 'should store the computer\'s choice in computer_move' do
      expect_any_instance_of(Array).to receive(:sample).and_return(:PAPER)
      expect(game.computer_choice).to eq(:PAPER)
    end
  end

  describe '#result' do
    context 'drawing' do
      it 'should draw the game' do
        game.player_choice('ROCK')
        game.instance_variable_set("@computer_move", :ROCK)
        expect(game.result).to eq 'draw'
      end
      it 'shouldn\'t change the score' do
        game.player_choice('ROCK')
        game.instance_variable_set("@computer_move", :ROCK)
        expect(game.player.score).to eq 0
        expect(game.computer.score).to eq 0
      end
    end
    context 'winning' do
      it 'should win the game' do
        game.player_choice('PAPER')
        game.instance_variable_set("@computer_move", :ROCK)
        allow(player).to receive(:score=).and_return 1
        expect(game.result).to eq 'win'
      end
      it 'should change the player\'s score by 1' do
        game.player_choice('PAPER')
        game.instance_variable_set("@computer_move", :ROCK)
        expect(player).to receive(:score=).with 1
        game.result
      end
    end
    context 'losing' do
      it 'should lose the game' do
        game.player_choice('PAPER')
        game.instance_variable_set("@computer_move", :SCISSORS)
        expect(game.result).to eq 'lose'
      end
      it 'should change the computer\'s score by 1' do
        game.player_choice('PAPER')
        game.instance_variable_set("@computer_move", :SCISSORS)
        expect{game.result}.to change{game.computer.score}.by 1
      end
    end
  end
end
