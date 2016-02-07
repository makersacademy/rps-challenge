require 'player'

describe Player do
  let(:player) {described_class}
  let(:player_name) {double :player_name}
  let(:player_id) {player_name.object_id}

  context 'Class methods' do


    describe '.players' do

      it 'stores @players when .add is called' do
        expect{player.add(player_id, player_name)}.to change{player.players.size}.by(1)
      end

    end
    describe '.add' do

      before do
        player.add(player_id, player_name)
      end

      it '.adds a Player class object to the @players hash' do
        expect(player.players).to include ({player_id => player_name})
      end

    end

    describe '.look_up' do

      before do
        player.add(player_id, player_name)
      end

      it 'will .look_up a Player class object' do
        expect(player.look_up(player_id)).to eq player_name
      end

    end
  end

  context 'Instance methods' do
    let(:name) {double :name}
    let(:turn_klass) {double :turn_klass}
    subject(:player_instance) { described_class.new(name, turn_klass) }
    let(:weapon_choice) {double :weapon_choice}

    describe 'initialize' do


      it 'stores the player\'s name' do
        expect(player_instance.name).to eq name
      end

      it 'has an uninitialized turn' do
        expect(player_instance.turn).to eq turn_klass
      end

    end
    describe '#new_turn' do

      before do
        allow(turn_klass).to receive(:new)
      end

      it 'intantiates a new turn instance' do
        expect(turn_klass).to receive(:new)
        player_instance.new_turn(weapon_choice)
      end

    end
  end
end
