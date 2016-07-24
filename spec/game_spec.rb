require 'game'

describe Game do
  let(:subject) {described_class.new(player_1)}
  let(:player_1) {double(:player)}

  before do
    subject.instance_variable_set('@p1', player_1)
  end

  describe '#initialize' do
    it 'stores both players' do
      expect(subject.p1).to be player_1
    end
  end

  describe '#play' do
  end
end
