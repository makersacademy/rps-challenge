require 'computer'

RSpec.describe Computer do
  subject(:computer) { Computer.new }
  let(:computer) {double(:computer, random_move: move)}
  let(:move) {"Rock"}

  describe '#random_move' do
    it 'generates a random move for computer' do
      expect(computer.random_move).to eq("Rock")
    end
  end

end
