describe Player do

  subject(:player1) { Player.new('player1')}

  describe '#name' do
    it "returns player's name" do
      expect(player1.name).to eq "player1"
    end
  end

  describe '#choice_log' do
    it "returns an empty array" do
      expect(player1.choice_log).to eq []
    end
  end

  describe '#pretty_log' do
    it "returns list of choices" do
      player1.choice_log << 'rock'
      player1.choice_log << 'paper'
      expect(player1.pretty_log).to eq 'rock paper'
    end
  end


end
