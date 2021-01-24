require './models/computer'

describe Computer do

  describe '#computer move' do
    it 'generates a random move for computer' do
      stub = double('computer')
      allow(described_class).to receive(:computer_move) do
        ["Rock", "Paper", "Scissors"].sample
    end
  end
end
end
