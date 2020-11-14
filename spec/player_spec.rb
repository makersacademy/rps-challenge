describe Player do
  describe '#initialize' do
    let(:player) { Player.new('Human') }

    it 'allows user to set their name' do
      expect(player.name).to eq('Human')
    end
  end
end