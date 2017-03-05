require 'game'

describe Game do

  let(:jamie) { Player.new "Jamie" }
  let(:computer) { Computer.new }
  subject(:game) { Game.new(jamie, computer) }

  describe '#initialize' do
    it 'is initialized with a player and computer' do
      game = Game.new(jamie, computer)
      expect(game.player).to eq jamie
    end
  end

   it { is_expected.to respond_to(:play).with(1).argument }

   describe '#play' do
     it 'asks player to check if their weapon of choice exists' do
       allow(jamie).to receive(:check_weapon).with(:rock).and_return(true)
       game.play(:rock)
     end

     it 'asks computer to pick a weapon' do
       allow(computer).to receive(:select_weapon).and_return(:rock)
       game.play(:rock)
     end
    end

end
