require_relative '../lib/computer.rb'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#choice' do
    it 'picks a random selection from the choices instance variable' do
      computer.stub(:choice) { "rock" }
      expect(computer.choice).to eq("rock")
    end
  end

  describe '#win' do
    it 'increases @wins by one' do
      expect { computer.win }.to change { computer.wins }.from(0).to(1)
    end
  end

end
