require 'human_player'

describe HumanPlayer do
  describe "#new/initialize" do
      it 'initialize with default instance variables name of Human_Player' do
        expect(subject.name).to eq('Human_Player')
      end

      it 'can set name of the player on initialization, which can be read' do
        human_player = HumanPlayer.new('Joe')
        expect(human_player.name).to eq('Joe')
      end
  end

  describe "#choice" do
    it 'allows the player to set and read the choice made for the game' do
      subject.choice = :rock
      expect(subject.choice).to eq(:rock)
    end
  end
end
