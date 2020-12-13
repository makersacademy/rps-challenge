describe Game do
    let(:player) { :player}
    let(:computer) { :computer }

    it 'creates an instance of game' do
        expect(Game.new(player, computer)).to be_instance_of Game
    end

    it 'has 2 players' do
        expect(Game).to respond_to(:new).with(2).arguments
    end

    it 'has a winner' do
        expect(Game.new(player, computer)).to respond_to :winner
    end

end