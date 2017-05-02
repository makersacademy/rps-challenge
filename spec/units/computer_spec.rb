require 'computer'

describe Computer do
  subject(:comp) { described_class.new }
  let(:options) { Computer::RPS }

  describe '#random_select' do
    it 'takes a random value from the constant array' do
      expect(options).to include comp.random_select
    end
  end

end
