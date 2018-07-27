require './lib/game'
describe Game do
  let(:player_class) { double :player_class, new: :player          }
  let(:player_1)     { double :player, name: 'jack'                }
  let(:subject)      { described_class.new(player_class, player_1) }
  context '' do
    describe '#score' do
      it { expect(subject).to respond_to(:score) }
      it { expect(subject.score).to eq([0, 0]) }
    end
    describe '#names' do
      it { expect(subject).to respond_to(:names) }
      it { expect(subject.names[0]).to eq(player_1) }
    end
  end
end
