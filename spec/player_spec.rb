describe Player do
  subject(:ollie) { Player.new("Ollie") }
  subject(:bot) { Player.new("Bot") }

  describe '#name' do
    it 'a player has a name' do
      expect(ollie.name).to eq("Ollie")
    end
  end

  describe '#score' do
    it 'returns a current points total' do
      expect(ollie.points).to eq(0)
    end
  end

  describe '#win_a_point' do
    it 'increases your points total by one' do
      expect(ollie.win_a_point).to eq(1)
    end
  end

  describe '#weapon' do
    it "returns a default of nil" do
      expect(ollie.weapon).to eq(nil)
    end
  end

  describe '#weapon_choice' do
    it "returns the chosen weapon" do
      ollie.weapon_choice('rock')
      expect(ollie.weapon).to eq('rock')
    end
    #
    # it "returns a random weapon if player is bot" do
    #   allow(bot).to receive(:weapon_choice) { 'paper' }
    #   expect(bot.weapon).to eq('paper')
    # end
  end
end
