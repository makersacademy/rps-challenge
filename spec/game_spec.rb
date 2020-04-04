require 'game'

describe Game do

  # Player_class double
  let(:player_class) { double(:player_class, new: player_inst) }

  # Player_instance double
  let(:player_inst) { double(:player_inst) }
  
  # Comp_class double
  let(:comp_class) { double(:comp_class, new: comp_inst) }

  # Comp_instance double
  let(:comp_inst) { double(:comp_inst) }

  # isolated game instance
  subject { described_class.new(player_1_name: 'Dave', player_class: player_class, comp_class: comp_class) }
  let(:two_player) { described_class.new(player_1_name: 'Dave', player_2_name: 'Jim', player_class: player_class, comp_class: comp_class) }

  describe '#multiplayer?' do
    it 'when player 2 supplied, #multiplayer? true' do
      expect(two_player.multiplayer?).to eq true
    end
    it 'when player 2 omitted, #multiplayer? false' do
      expect(subject.multiplayer?).to eq false
    end
  end

  describe '#winner' do
    context 'comp and player choose same, draw' do
      it 'comp rock - Draw' do
        allow(comp_inst).to receive(:choice).and_return 'Rock'
        allow(player_inst).to receive(:choice).and_return 'Rock'
        subject.decide_winner
        expect(subject.winner).to eq nil
      end
    end

    context 'player always chooses rock' do
      before(:each) { allow(player_inst).to receive(:choice).and_return 'Rock' }

      it 'comp paper - comp wins' do
        allow(comp_inst).to receive(:choice).and_return 'Paper'
        subject.decide_winner
        expect(subject.winner).to eq comp_inst
      end

      it 'comp scissors - player wins' do
        allow(comp_inst).to receive(:choice).and_return 'Scissors'
        subject.decide_winner
        expect(subject.winner).to eq player_inst
      end
    end

    context 'player always chooses paper' do
      before(:each) { allow(player_inst).to receive(:choice).and_return 'Paper' }

      it 'comp scissors - comp wins' do
        allow(comp_inst).to receive(:choice).and_return 'Scissors'
        subject.decide_winner
        expect(subject.winner).to eq comp_inst
      end

      it 'comp rock - player wins' do
        allow(comp_inst).to receive(:choice).and_return 'Rock'
        subject.decide_winner
        expect(subject.winner).to eq player_inst
      end
    end

    context 'player always chooses scissors' do
      before(:each) { allow(player_inst).to receive(:choice).and_return 'Scissors' }

      it 'comp rock - comp wins' do
        allow(comp_inst).to receive(:choice).and_return 'Rock'
        subject.decide_winner
        expect(subject.winner).to eq comp_inst
      end

      it 'comp paper - player wins' do
        allow(comp_inst).to receive(:choice).and_return 'Paper'
        subject.decide_winner
        expect(subject.winner).to eq player_inst
      end
    end
  end
end
