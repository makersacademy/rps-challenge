require './lib/views/game'

describe Game do

  let(:choice) {double :choice}
  subject(:game) {described_class.new(choice)}
  let(:rock) {stub 'rock'}
  let(:paper) {stub 'paper'}

  context 'game is initialised' do
    it 'records the players choice' do
      expect(game.turn[0]).to eq(choice)
    end
    it 'initialses with a score of zero' do
      expect(game.score).to eq(0)
    end
    it 'initialses with an user-winning combinations' do
      expect(game.user_wins).to eq([['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']])
    end
    it 'initialses with an robot-winning combinations' do
      expect(game.robot_wins).to eq([['scissors', 'rock'], ['rock','paper'], ['paper', 'scissors']])
    end
  end

    it 'adds the robot\'s choice to the turn array' do
      game.input_random_choice(choice)
      expect(game.turn[1]).to eq(choice)
    end

    it 'adds a point to the score if user wins' do
      game1 = Game.new('paper')
      game1.robot_choice('rock')
      game1.score_calculator
      expect(game.score).to eq(1)
    end
    it 'adds a point to the score if user wins' do
      game2 = Game.new('rock')
      game2.robot_choice('paper')
      game2.score_calculator
      expect(game.score).to eq(-1)
    end
    it 'keeps the score at zero if user wins' do
      game2 = Game.new('rock')
      game2.robot_choice('paper')
      game2.score_calculator
      expect(game.score).to eq(0)
    end



  # it 'give the robot a random choice'
  #   expect(game.weapons).to respond_to(sample)
  #   game.robot_choice


end
