require 'Game'

describe Game do
  subject(:game) { described_class.new(player1) }
  let(:player1) { double :player1 }
  let(:weapon) { double :weapon }

  describe '#player1' do
    it 'returns player' do
      expect(game.player1).to eq player1
    end
  end
  describe '#set_points' do
    it 'sets the game points' do
      game.set_points(10)
      expect(game.game_points).to eq 10
    end
  end
  # describe '#weapon_choice' do
  #   it 'returns player\'s choice' do
  #     game.weapons(weapon)
  #     expect(game.player_weapon).to eq weapon
  #   end
  # end
  # describe '#computer_choice' do
  #   it 'returns a random choice of weapon for the computer' do
  #     allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
  #     expect(game.computer_weapon).to eq :scissors
  #   end
  # end
  # describe '#round' do
  #   it 'executes a round and returns result' do
  #     allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
  #     game.weapons(:rock)
  #     expect(game.result).to eq :win
  #   end
  # end
  # describe '#result' do
  #   it 'returns a result given two weapon choices' do
  #     allow(game).to receive(:player_weapon).and_return(:rock)
  #     allow(game).to receive(:computer_weapon).and_return(:rock)
  #     expect(game.result).to eq :tie
  #   end
  # end
end
