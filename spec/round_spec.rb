require './lib/round'

describe Round do
  subject(:round) { described_class.new (options) }
  let(:options) {
    {"name" => "Ben",
      "shape" => :rock,
      "opposition_shape" => :rock}
    }

  describe '#name' do
    it 'returns name of player' do
      expect(round.name).to eq 'Ben'
    end
  end

end
