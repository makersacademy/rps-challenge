describe Player do
  let(:player_1) { Player.new('Luke')}

  describe '#name' do
    it 'should return the name of the player' do
      expect(player_1.name).to eq 'Luke'
    end
  end

end