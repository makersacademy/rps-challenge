require './lib/game'

describe Game do

  let(:player_name) { Game.new("Sophie")}

  it 'should instanciate' do
    expect(Game).to respond_to(:new)
  end

  describe "#winner" do
    it 'should respond to winner' do
      expect(Game.new).to respond_to(:winner) 
    end

    it 'should return a tie if player and computer get same answer' do
      expect(subject.winner).to eq("It's a tie!")
    end
  end
end
