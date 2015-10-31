require 'game'
require 'player'
require 'computer'

describe Game do
  let(:human) {instance_double "Player"}
  let(:robot) {instance_double "Computer"}

  subject(:game) {described_class.new(human, robot)}

  context 'initialisation' do
    before(:each) do
      allow(human).to receive(:name).and_return("Norm")
      allow(robot).to receive(:name).and_return("Computer")
    end
    it {is_expected.to respond_to(:player1_name)}
    it {is_expected.to respond_to(:player2_name)}


    it 'is initialised with a player 1' do
      expect(game.player1_name).to eq "Norm"
    end

    it 'is initialised with a player 2' do
      expect(game.player2_name).to eq "Computer"
    end
  end

  context 'Setting players hands' do
    it {is_expected.to respond_to(:set_player1_hand).with(1).argument}
    it {is_expected.to respond_to(:set_player2_hand).with(1).argument}

    it 'delegates setting of hands to colaborators' do
      expect(human).to receive(:set_hand)
      expect(robot).to receive(:set_hand)
      game.set_player1_hand(:rock)
      game.set_player2_hand(:paper)
    end
  end
  context 'Getting players hands' do
    it {is_expected.to respond_to(:player1_hand)}
    it {is_expected.to respond_to(:player2_hand)}

    it 'delegates getting of hands to collaborators' do
      allow(human).to receive(:hand).and_return(:rock)
      allow(robot).to receive(:hand).and_return(:rock)
      expect(game.player1_hand).to eq :rock
      expect(game.player2_hand).to eq :rock
    end
  end
  context 'Playing a game' do
    before(:each) do
      allow(human).to receive(:name).and_return("Norm")
      allow(robot).to receive(:name).and_return("Computer")
    end

    it {is_expected.to respond_to(:play)}
    it {is_expected.to respond_to(:outcome)}

    it 'is a draw when both players play the same hand' do
      allow(human).to receive(:hand).and_return(:rock)
      allow(robot).to receive(:hand).and_return(:rock)
      game.play
      expect(game.outcome).to eq "A Draw!"
    end
   it "Player 1's Rock blunts Player 2's Scissors" do
      allow(human).to receive(:hand).and_return(:rock)
      allow(robot).to receive(:hand).and_return(:scissors)
      game.play
      expect(game.outcome).to eq "#{human.name} Won!"
   end
   it "Player 2's Rock blunts Player 1's Scissors" do
      allow(human).to receive(:hand).and_return(:scissors)
      allow(robot).to receive(:hand).and_return(:rock)
      game.play
      expect(game.outcome).to eq "#{robot.name} Won!"
   end
   it "Player 1's Paper covers Player 2's Rock" do
      allow(human).to receive(:hand).and_return(:paper)
      allow(robot).to receive(:hand).and_return(:rock)
      game.play
      expect(game.outcome).to eq "#{human.name} Won!"
   end
   it "Player 2's Paper covers Player 1's Rock" do
      allow(human).to receive(:hand).and_return(:rock)
      allow(robot).to receive(:hand).and_return(:paper)
      game.play
      expect(game.outcome).to eq "#{robot.name} Won!"
   end
   it "Player 1's Scissors cut Player 2's Paper" do
      allow(human).to receive(:hand).and_return(:scissors)
      allow(robot).to receive(:hand).and_return(:paper)
      game.play
      expect(game.outcome).to eq "#{human.name} Won!"
   end
   it "Player 2's Scissors Player 1's Paper" do
      allow(human).to receive(:hand).and_return(:paper)
      allow(robot).to receive(:hand).and_return(:scissors)
      game.play
      expect(game.outcome).to eq "#{robot.name} Won!"
   end

  end
end
