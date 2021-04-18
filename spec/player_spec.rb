require 'player'

describe Player do
  let(:subject) { described_class.new('User02') }

  describe '#name' do
    it 'has a name' do
      expect(subject.name).to eq 'User02'
    end
  end

  describe '#play_option' do
    it 'has play option' do
      expect(subject.play_option).to eq ''
    end
  end
end
