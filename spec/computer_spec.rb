require 'computer'

describe Computer do
  let(:computer) { Computer.new }
  describe 'upon creation' do
    it 'has a name' do
      expect(computer.name).to eq :computer
    end
  end
end
