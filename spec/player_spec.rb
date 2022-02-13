require 'player'
describe Player do
  subject(:john) { Player.new('John') }
 
  describe '#name' do
    it 'displays the player name' do
      expect(john.name). to eq 'John'
    end
  end
end