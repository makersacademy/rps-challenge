describe Weapon do

  rules = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  subject(:rock) { described_class.new(:rock, rules) }
  let(:paper) { described_class.new(:paper, rules) }
  let(:scissors) { described_class.new(:scissors, rules) }

  describe '#type' do
    it 'returns the type' do
      expect(rock.type).to be :rock
    end
  end

  describe '#beats?' do
    it 'beats inferior weapons' do
      expect(rock.beats?(scissors)).to be true
    end

    it 'doesnt beat superior weapons' do
      expect(rock.beats?(paper)).to be false
    end
  end
end
