require 'player'

RSpec.describe Player do
  subject { Player.new('Janet') }

  it { is_expected.to respond_to :name }

  describe '#name responds with the correct name' do
    it '- expected to return JANET' do
      expect(subject.name).to eq 'Janet'
    end
  end
end
