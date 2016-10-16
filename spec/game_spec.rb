require 'game'
require 'player'

describe Game do

subject(:game) { described_class.new(hilary, trump) }
let (:hilary) { double(:player, name: 'Crooked Hilary', weapon_choice: :paper) }
let (:trump) { double(:trump, weapon_choice: :rock) }

  describe '#initialize' do
    it 'creates a game' do
      expect(subject).to be_instance_of(Game)
    end
    it 'takes the name of the player' do
      expect(subject.player_name).to eq 'Crooked Hilary'
    end
  end


context 'after weapon has been selected' do

  describe '#calculate_outcome' do
    it 'works out the winner' do
      subject.calculate_outcome
      subject.calculate_current_winner
      expect(game.current_winner).to eq "Crooked Hilary"
    end
  end
  describe '#update_score' do
    it 'adds a point to the winner' do
      subject.calculate_current_winner
      expect{subject.update_score}.to change{subject.player_score}.by 1
      end
  end
  describe '#update_list_of_wins' do
    it 'adds the result to the list' do
      subject.calculate_current_winner
      subject.update_list_of_wins
      expect(subject.list_of_wins).to include("Crooked Hilary")
    end
  end
end

  describe '#overall_winner' do
    before do
      subject.instance_variable_set(:@player_score, 3)
    end
    it 'is found when a player reaches 3 points' do
        subject.calculate_overall_winner
      expect(subject.overall_winner).to eq 'Crooked Hilary'
    end
  end

  describe '#game_over' do
    it 'knows the game is over' do

    end
  end


end
