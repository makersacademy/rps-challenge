require 'rps_extended_combinations'
require 'computer'

describe Computer do
  subject(:comp) { described_class.new }

  before :each do
    srand(0)
  end

  describe '#name' do
    it 'default name is SkyNet' do
      expect(Computer::DEFAULT_NAME).to eq 'SkyNet'
    end
  end

  describe '#choice' do
    it 'allows computer player to pick moves randomly' do
      comp.player_move
      expect(comp.choice).to eq :sp
    end
  end

end