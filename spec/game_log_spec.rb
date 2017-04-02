require 'game_log'

describe GameLog do
  subject(:game_log) { described_class.new(player_1,player_2,rps_game) }
  let (:player_1) {double(:player_1, name: "Xenith")}
  let (:player_2) {double(:player_2, name: "Quasar")}
  let (:rps_game) {double(:rps_game)}

  describe '#initialize' do
    it 'has two player classes' do

    end

    it 'has a rps_game class' do

    end

    it 'creates a hash with a tally functionality' do
      expect(game_log.scorecard.length).to eq(2)
    end

  end

    it 'takes input from two choices' do

    end

    describe '#play_round' do
      it 'makes a new RPS_game_class' do

      end

      it 'gets outcome from class' do

      end

      it 'updates the winner hash' do

      end
    end

    describe '#update_scorecard' do
      it 'updates player_1 scorecard after player_1 win' do
        expect{game_log.update_scorecard("player_1")}.to change{game_log.scorecard[player_1.name]}.by(1)
      end
    end


end
