require 'fight'

RSpec.describe Fight do
  let(:mac) { double :mac, random_weapon: :any_symbol }
  subject { described_class.new(mac) }

  describe '#grab_weapon' do
    it 'expects opponent to return a random weapon' do
      expect(mac).to receive(:random_weapon)
      subject.grab_weapon
    end
  end

  describe '#rps' do
    it { is_expected.to respond_to(:rps).with(2).arguments }
  end

  describe '#rps' do
    it 'returns a draw' do
      expect(subject.rps(:rock, :rock)).to eq(:draw)
    end

    it 'returns a win' do
      expect(subject.rps(:rock, :scissors)).to eq(:win)
    end

    it 'returns a lose' do
      expect(subject.rps(:rock, :paper)).to eq(:lose)
    end
  end
end
