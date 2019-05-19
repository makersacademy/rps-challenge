describe Game do
  describe '#player_choice' do
    it 'requires chosen weapon' do
      weapon = 'Rock'
      expect(subject.player_choice(weapon)).to eq('Rock')
    end
  end

  describe 'WEAPON' do
    it 'is an array of weapons' do
      expect(Game::WEAPON).to eq([:rock, :paper, :scissors])
    end
  end
end