describe Player do

  subject(:player1) { Player.new('player1')}

  describe '#name' do
    it "returns player's name" do
      expect(samir.name).to eq "player1"
    end
  end

  describe '#choice_log' do
    it "returns an empty array" do
      expect(player1.choice_log).to eq []
    end
    it "returns player's previous choices"  do
      expect(player1)
      visit('/')
      fill_in :player, with: 'samir'
      click_button 'Enter Game'
      click_link 'Start Game'
      click_link 'Rock'
      click_link 'Paper'
      expect(player1.choice_log).to eq ['Rock', 'Paper']
    end
  end

end
