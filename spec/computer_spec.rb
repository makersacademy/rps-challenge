require 'computer'

describe Computer do
  let(:computer) { described_class.new }
  context 'it can play a game of RPS' do
    it 'can choose RPS randomly' do
      expect(computer.move).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end
end
