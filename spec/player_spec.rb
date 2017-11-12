require 'player'

describe Player do

  let(:player) { double :player, name: 'Joe', weapon: :rock }
  let(:subject) { described_class.new(player) }
  let(:double_rock) { 'rock' }

  describe '#name' do
    context 'should when called' do
      it 'return the players name' do
        expect(player.name).to eq 'Joe'
      end
    end
  end

  describe '#choose_weapon' do
    context 'when passed a weapon choice' do
      it 'should assign player weapon as symbol' do
        expect(subject.choose_weapon('rock')).to eq(:rock)
      end
    end
  end

  describe '#weapon' do
    context 'when called on a player' do
      it 'should return players weapon' do
        expect(player.weapon).to eq(:rock)
      end
    end
  end
end
