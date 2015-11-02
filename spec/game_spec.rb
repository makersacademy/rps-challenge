require './lib/game'

describe Game do

  subject(:game) {described_class.new}
  let(:battle) {double(:battle, player_weapon: player_weapon, computer_weapon: computer_weapon)}
  let(:player_weapon) {"paper"}
  let(:computer_weapon) {"rock"}

    describe '#battle' do
      it 'allows the game to establish the winner' do
        allow_any_instance_of(Array).to receive(:sample).and_return("rock")
        expect(game.battle(player_weapon, computer_weapon)).to eq "you win"
      end

    end

end
