require 'player'

describe Player do
  let(:game) {double :game, player_name: 'Binky', player_choice: 'Lizard'}
  subject(:player) {described_class.new(game.player_name)}
  context 'When the player initializes' do
    describe '#initialize' do
      it 'stores the player name from the controller' do
        expect(player.name).to eq 'Binky'
      end
    end
  end

  context 'When the player chooses an option' do
    describe '#choice' do
      it 'stores the choice the player makes' do
        player.choice(game.player_choice)
        expect(player.weapon).to eq 'Lizard'
      end
    end
  end
end
