require 'computer'

describe Computer do
  let(:computer) {described_class.new }
  context 'it can play a game of RPS' do
    it 'can choose RPS randomly' do
      srand(2)
          expect(computer.computer_move).to eq :rock
    end
  end
end
