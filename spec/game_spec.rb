require 'game'
require 'player'
require 'computer'

describe Game do
  let(:human) {instance_double "Player"}
  let(:robot) {instance_double "Computer"}
  let(:rules) {double :rules}
  let(:rules_klass) {double :rules_klass, new: rules}
  subject(:game) {described_class.new(rules_klass, human, robot)}

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
    it {is_expected.to respond_to(:player1_hand=).with(1).argument}
    it {is_expected.to respond_to(:player2_hand=).with(1).argument}

    it 'delegates setting of hands to colaborators' do
      expect(human).to receive(:give_hand)
      expect(robot).to receive(:give_hand)
      game.player1_hand = :rock
      game.player2_hand = :paper
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
  context 'Play game' do

    it {is_expected.to respond_to(:play)}

    it 'delegates the play to collaborator' do
      allow(human).to receive(:hand)
      allow(robot).to receive(:hand)

      expect(rules).to receive(:play)
      game.play
    end
  end
end
