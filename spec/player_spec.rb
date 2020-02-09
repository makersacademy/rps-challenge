require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq("Dave")
    end
  end

  describe '#choice' do
    it 'returns the name' do
      dave.set_choice("Scissors")
      expect(dave).to respond_to(:show_choice)
    end
  end
end
