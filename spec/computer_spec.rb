require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe '#name' do
    it 'returns the name' do
      expect(computer.name).to eq "Computer"
    end
  end

  describe '#move' do
    it 'returns the attribute move' do
      expect(computer.move).to eq ["Rock", "Paper", "Scissors"]
    end
  end

  describe '#random' do
    it 'updates the move attribute to either rock, paper or scissors' do
    computer.random
    expect(computer.random).to eq("Rock").or(eq("Paper")).or(eq("Scissors"))
    end
  end

end