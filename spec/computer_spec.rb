require './lib/computer.rb'

describe Computer do

  subject(:computer) { described_class.new(weapon) }
  let(:weapon) { double(:weapon) }

  describe '#initialize' do
    it 'should set weapon to eq array of weapons' do
      allow(weapon).to receive(:sample).and_return(weapon)
      expect(computer.weapon).to eq weapon
    end
  end

  # describe '#random_weapon' do
  #   it 'should return a random weapon' do
  #     allow(computer.weapon).to receive(:sample).and_return(weapon)
  #     expect(computer.random_weapon).to eq weapon
  #   end
  # end

end
