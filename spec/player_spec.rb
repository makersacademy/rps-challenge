require 'player'

describe Player do
  subject(:ellie) { Player.new('Ellie') }

  describe '#name' do
    it "should return player name" do
      expect(ellie.name).to eq 'Ellie'
    end
  end

  describe '#show_choice' do
    it "should return whatever was inputted as the player's choice" do
      subject.choice('Rock')
      expect(subject.show_choice).to eq 'Rock'
    end
  end

end
