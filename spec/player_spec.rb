require 'player'

describe Player do
  subject(:john) { Player.new('John') }

  describe '#name' do
    it 'returns the name' do
      expect(john.name).to eq 'John'
    end
  end

  describe '#add_choice' do
    it 'Adds the players choice as a local variable' do
      john.add_choice('Rock')
      expect(john.choice).to eq 'Rock'
    end
  end

end