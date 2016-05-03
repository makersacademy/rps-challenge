require 'game'

describe Game do
  let(:player_rock)   {double :player, choice: :rock}
  let(:player_paper)  {double :player, choice: :paper}
  let(:comp_rock)     {double :computer, choice: :rock}
  let(:comp_paper)    {double :computer, choice: :paper}
  subject(:win)       {described_class.new player_paper, comp_rock}
  subject(:draw)      {described_class.new player_rock, comp_rock}
  subject(:lose)      {described_class.new player_rock, comp_paper}


  describe '#self.create' do
    it 'initializes a new game' do
      Game.create player_rock
      expect(Game.instance).to be_a Game
    end
  end

  describe '#result' do
    it 'determines a win' do
      expect(win.result).to eq :win
    end

    it 'determines a draw' do
      expect(draw.result).to eq :draw
    end

    it 'determines a lose' do
      expect(lose.result).to eq :lose
    end
  end

end
