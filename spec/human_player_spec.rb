require 'human_player'

describe HumanPlayer do
  subject(:human) { described_class.new('Mike') }

  it { is_expected.to respond_to(:weapon) }
  it { is_expected.to respond_to(:name) }

  describe '#weapon' do
    it 'saves a new value for weapon variable' do
      human.weapon = 'Rock'

      expect(human.weapon).not_to be nil
    end
  end
end
