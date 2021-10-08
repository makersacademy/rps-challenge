describe Player do
  subject(:timmy) { Player.new('Timmy') }
  subject(:computer) { Computer.new('RPS Computer') }

  describe '#player_name' do
    it "should return the player's name" do
      expect(timmy.name).to eq("Timmy")
    end
  end

end