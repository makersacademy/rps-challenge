describe Player do
  let(:player_1) { Player.new('Luke')}

  describe '#name' do
    it 'should return the name of the player' do
      expect(player_1.name).to eq 'Luke'
    end
  end

  describe '#throw' do
    it 'should change the action to the player\'s throw' do
      expect { player_1.throw("rock") }.to change { player_1.action }.to("rock")
    end
  end

  describe '#win' do
    it 'should increase the score count by 1' do
      expect { player_1.win }.to change { player_1.score }.by(1)
    end
  end
end

describe Computer do

end