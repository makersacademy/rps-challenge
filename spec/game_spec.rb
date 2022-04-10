require_relative '../lib/game'

describe Game do
  context 'Game creates player object' do
    it '#initialize' do
      expect(subject.player1).to be_instance_of(Player)
    end
  end

    context 'Game has a method to declare winner' do
      it '#declare_winner' do
        expect(subject).to respond_to(:declare_winner)
      end
    end
end