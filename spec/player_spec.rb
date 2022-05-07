require 'player'

describe Player do
  subject(:erlantz) { Player.new('Erlantz') }
  subject(:computer) { Player.new }

  describe '#name' do
    it 'returns the name' do
      expect(erlantz.name).to  eq 'Erlantz'
    end

    it 'name is Computer when not given' do
      expect(computer.name).to eq "Computer"
    end
  end

  describe '#player_choice' do
    it 'assigns choice given by player' do
      erlantz.player_choice("rock")
      expect(erlantz.choice).to eq "rock"
    end
  end

  describe '#computer_choice' do
    it 'assigns a random choice when computer' do
      computer.computer_choice
      expect(computer.choice).to eq("rock").or eq("paper").or eq("scissors")
    end
  end

end
