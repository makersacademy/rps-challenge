require 'computer'

describe Computer do
  subject(:computer) { Computer.new}

  describe '#play' do
    it 'returns rock' do
      computer.play
      expect([:rock, :paper, :scissors]).to include computer.move
    end
  end
end