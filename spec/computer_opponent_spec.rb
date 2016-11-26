require 'computer_opponent'

describe ComputerOpponent do

  subject(:opponent) { described_class.new }

  describe '#new' do

    it 'initializes with a name' do
      expect(opponent.name).to be_kind_of String
    end

    it 'initializes with a weapon' do
      p opponent
      expect(opponent.weapon).not_to be_empty
    end

  end

end
