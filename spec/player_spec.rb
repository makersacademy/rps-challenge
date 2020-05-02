require 'player'

describe Player do
  subject(:will) { Player.new('Will') }
  subject(:empty) { Player.new('') }

  describe '#name' do
    
    it 'returns the name' do
      expect(will.name).to eq 'Will'
    end

    it 'returns Jamie Doe if the name is empty' do
      expect(empty.name).to eq 'Jamie Doe'
    end

  end

  describe '#move' do

    it 'returns the move' do
      will.move = '🗿'
      expect(will.move).to eq '🗿'
    end

  end

end
