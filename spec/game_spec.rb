require 'game'

describe Game do
  before(:each) do
    p_1_dub = double :p_1, name: "Foo", weapon: "this"
    p_2_dub = double :p_2, name: "Bar", weapon: "that"
    @game = Game.new(p_1_dub, p_2_dub)
  end
  describe '#p_1 & #p_2' do
    it "to answer when called" do
      expect(@game).to respond_to(:p_1)
      expect(@game).to respond_to(:p_2)
    end
  end
  describe '#win' do
    it "declare #p_1 the winner" do
      expect(@game.win("beats")).to eq("This beats that. Foo wins!")
    end
  end
  describe '#lose' do
    it "declare #p_2 the winner" do
      expect(@game.lose("beats")).to eq("That beats this. Bar wins!")
    end
  end
  describe '#draw' do
    it "declare it a draw" do
      expect(@game.draw()).to eq("It's a draw!")
    end
  end
end
