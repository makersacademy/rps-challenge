require 'computer'

describe Computer do
  let(:computer) { described_class.new }
  context 'it can play a game of RPS' do
    it 'can choose RPS randomly' do
      expect(computer.computer_move).to eq(:rock).or eq(:paper).or eq(:scissors)
    end
  end
end
