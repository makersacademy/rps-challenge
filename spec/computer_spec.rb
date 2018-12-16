require 'computer'

describe Computer do

  let(:computer) { Computer.new }

  describe 'upon creation' do
    it 'has a name' do
      expect(computer.name).to eq :computer
    end

    it 'has a choice of attack' do
      allow(computer).to receive(:move).and_return(:paper)
      expect(computer.move).to eq :paper
    end
  end
end
