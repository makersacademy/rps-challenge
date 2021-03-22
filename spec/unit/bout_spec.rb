require 'bout'

describe Bout do
  let(:players) { [:player_one, :player_two] }
  let(:bout) { Bout.new(players) }

  describe 'initialize' do

    it 'has a winner' do
      expect(bout).to respond_to(:winner)
    end

    it 'has a collection of players' do
      expect(bout.players).to eq([:player_one, :player_two])
    end
  end

  describe 'who_won' do
    
    it 'asks the rules which player wins' do
      expect(bout).to respond_to(:who_won)
    end
  end

end
