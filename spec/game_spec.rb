require 'game'

describe Game do
  let (:game) {Game.new 'Paul'}

  it 'should take in a player-name' do
    expect(game.player_1_name).to eq 'Paul'
  end

  it 'should give the default name player_1 if no name is given' do
    game = Game.new
    expect(game.player_1_name).to eq 'player_1'
  end

  # it 'should allow a player to guess on a particular game instance' do
  #   expect(game.play("scissors")).to eq :win
  # end

  # it 'should be able to return :win or :lose to a request from player' do
  #
  #   expect(subject.play('scissors')).to eq(:win).or eq(:lose)
  #
  # end

  it 'should print out the player name if they win' do
     if game.play("scissors") == :win
       expect(game.game_winner).to eq "Paul"
     end
   end

  context 'determining the winner' do

    it 'should tie when the player guess and the computer guess are the same' do
      game.stub(:computer_guess).and_return('paper')
      expect(game.play('paper')).to eq 'tied'

    end

    it "should win when player choice is scissors and computer choice is paper" do
    game.stub(:computer_guess).and_return('paper')
    expect(game.play('scissors')).to eq 'Paul'

    end


    it "should lose when player choice is scissors and computer choice is rock" do
    game.stub(:computer_guess).and_return('rock')
    expect(game.play('scissors')).to eq 'Computer'

    end

    it "should win when player choice is paper and computer choice is rock" do
    game.stub(:computer_guess).and_return('rock')
    expect(game.play('paper')).to eq 'Paul'

    end

    it "should win when player choice is rock and computer choice is scissors" do
    game.stub(:computer_guess).and_return('scissors')
    expect(game.play('rock')).to eq 'Paul'

    end


   end

end
