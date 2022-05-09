require 'computer'

describe Computer do
  subject(:computer) { Computer.new}

  describe '#name' do
    it 'returns name' do
      expect(computer.name).to eq "Computer"
    end
  end

  describe '#play' do
    it 'returns move' do
      computer.play
      expect([:rock, :paper, :scissors]).to include computer.move
    end
  end
end