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
    let(:dummy_turn) {double :dummy_turn}

    describe 'initialize' do


      it 'stores the player\'s name' do
        expect(player_instance.name).to eq name
      end

      it 'has an uninitialized turn' do
        expect(player_instance.turn_klass).to eq turn_klass
      end

    end
    describe '#new_turn' do

      before do
        allow(turn_klass).to receive(:new).and_return(dummy_turn)
        allow(weapon_choice).to receive(:to_sym)
      end

      it 'intantiates a new turn instance' do
        expect(turn_klass).to receive(:new)
        player_instance.new_turn(weapon_choice)
      end

      it 'stores a new instance of turn' do
        player_instance.new_turn(weapon_choice)
        expect(player_instance.turn).to eq dummy_turn
      end
    end

    describe '#result' do

      before do
        allow(turn_klass).to receive(:new).and_return(dummy_turn)
        allow(weapon_choice).to receive(:to_sym)
        player_instance.new_turn(weapon_choice)
      end

      it 'retrieves the result from the turn' do
        allow(dummy_turn).to receive(:result)
        expect(dummy_turn).to receive(:result)
        player_instance.result
      end

      describe '#opponent_weapon' do

        it 'retrieves player 2\'s weapon choice for the turn' do
          allow(dummy_turn).to receive(:p2_weapon)
          expect(dummy_turn).to receive(:p2_weapon)
          player_instance.opponent_weapon
        end
      end
    end
  end
end
