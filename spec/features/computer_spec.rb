require './lib/computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe '#computer_sign' do
    it 'returns computer_sign as nil' do
      expect(computer.computer_sign).to eq(nil)
    end
  end

  describe '#enemy method' do
    it 'checks if all three inputs are there' do
      expect(["rock", "paper", "scissors"]).to include(computer.enemy)
    end
  end
end
