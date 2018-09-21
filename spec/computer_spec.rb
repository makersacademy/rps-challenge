require 'computer'

describe Computer do

  # it { is_expected.to respond_to(:random_move) }

  describe '#random_move' do
    it 'returns a random choice with rock(r)' do
      pc = Computer.new
      allow(pc).to receive(:random_move).and_return("r")
    end
  end

end
