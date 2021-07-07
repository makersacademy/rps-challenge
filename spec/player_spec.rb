require 'player'

describe Player do
  subject(:human) { Player.new('Human') }
  subject(:empty) { Player.new('') }
  subject(:computer) { Player.new('Computer', true) }

  describe '#name' do
    
    it 'returns the name' do
      expect(human.name).to eq 'Human'
    end

    it 'returns Jamie Doe if the name is empty' do
      expect(empty.name).to eq 'Jamie Doe'
    end

  end

  describe '#move' do

    it 'returns the move' do
      human.move = '🗿'
      expect(human.move).to eq '🗿'
    end

  end

  describe '#computer?' do

    it ':human returns false' do
      expect(human.computer?).to eq false
    end

    it ':computer returns true' do
      expect(computer.computer?).to eq true
    end

  end

end
