require 'game'
require 'outcome_finder'

describe Game do
  player_name = 'Ed'
  subject(:game) { described_class.new(player_name, player_class, computer_class) }
  let(:player_class) { double(:player_class, :new => player) }
  let(:player) { double(:player, :update_score => true) }
  let(:computer_class) { double(:computer_class, :new => computer) }
  let(:computer) { double(:computer, :selection => 'rock') }
  outcomes = OutcomeFinder::OUTCOMES
  describe '#initialize' do
    it 'creates a new player instance' do
      expect(player_class).to receive(:new).with player_name
      Game.new(player_name, player_class, computer_class)
    end
    it 'creates a new computer instance' do
      expect(computer_class).to receive(:new)
      Game.new(player_name, player_class, computer_class)
    end
  end
  describe '#turn' do
    it 'asks the computer for its selection' do
      expect(computer).to receive(:selection)
      game.turn 'rock'
    end

    outcomes.each do |computer_selection, human_selections|
      context "computer chooses #{computer_selection}" do
        before(:each) { allow(computer).to receive(:selection).and_return(computer_selection) }
        human_selections.each do |human_selection, outcome|
          it "calls update_score with #{outcome} if the player has chosen #{human_selection}" do
            expect(player).to receive(:update_score).with outcome
            game.turn human_selection
          end
        end
      end
    end
  end
end
