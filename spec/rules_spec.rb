require 'rules'

describe Rules do
let(:rules) { described_class.new(competition) }
let(:competition) { double :competition }

  describe '#even?' do
    it 'tells if the result is even' do
      expect(rules.even?([:rock, :rock])).to eq(true)
      expect(rules.even?([:rock, :scissors])).to eq(false)
    end
  end

  describe '#player_win?' do
    it 'tells if the player wins' do
      expect(rules.player_win?([:rock, :scissors])).to eq(true)
      expect(rules.player_win?([:paper, :rock])).to eq(true)
    end

    it 'tells if the player loses' do
      expect(rules.player_win?([:scissors, :rock])).to eq(false)
      expect(rules.player_win?([:rock, :paper])).to eq(false)
    end
  end

  end
