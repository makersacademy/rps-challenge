require 'game'

describe Game do
  let (:player_1) { double :player }
  let (:player_2) { double :player }

  subject { described_class.new(player_1, player_2) }

  describe '#initialize' do
    it 'should have player 1' do
      expect(subject).to have_attributes(player_1: player_1)
    end

    it 'should have player 2' do
      expect(subject).to have_attributes(player_2: player_2)
    end

    it 'should have turn variable' do
      expect(subject.instance_variable_get(:@turn)).to eql(true)
    end

    it 'should only be initialised via class methods' do
      expect { Game.new }.to raise_error
    end
  end

  # describe '#turn' do
  #   it 'delegates to #attack' do
  #     expect(subject).to respond_to(:turn)
  #   end
  #
  #   it 'lets #game_over swap from true to false' do
  #     allow(player_1).to receive(:hp).and_return(0)
  #     expect { subject.turn }.to change { subject.game_over }.to eq true
  #   end
  # end
  #
  # context 'lets players take turns' do
  #   it '#turn swaps between players' do
  #     allow(player_1).to receive(:hp).and_return(50)
  #     allow(player_2).to receive(:hp).and_return(50)
  #     expect(subject).to receive(:attack).once
  #     subject.turn
  #   end
end
