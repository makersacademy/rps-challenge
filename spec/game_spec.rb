describe Game do
  subject = Game.new("testplayer")

  describe '#initialize' do
    it 'should be created with a name and return the player name' do
      expect(subject.name).to eq("testplayer")
    end
  end

end