require './lib/computer'

describe Computer do
  subject(:computer) { described_class.new }

  context 'Tests using stub' do

    describe '#random_weapon' do
      it 'returns a random weapon as symbol' do
        computer.stub(:random_weapon) { :rock }
        expect(computer.random_weapon).to eq :rock
      end
    end

  end
end
