require 'game'
require 'player'

describe Game do
  subject(:game) {Game.new('single')}
  let(:player_1) { double(Player, name: "Vale") }
  let(:player_2) { double(Player, name: "R2D2") }



  describe "#automatic_choice" do

    before do
      allow(game).to receive(:automatic_choice).and_return('rock')
    end

    it "show automatic player choice"  do
      expect(game.record_automatic_player_choice).to eq('rock')
    end
  end

  describe "#result_automatic" do

    before do
      allow(game).to receive(:automatic_choice).and_return('rock')
      allow(player_1).to receive(:choice).and_return("paper")
    end

    it "show result"  do
      game.add_player_1(player_1)
      game.record_automatic_player_choice

      expect(game.result).to eq('Vale')
    end
   end

   describe "#result" do

     before do
       allow(game).to receive(:automatic_choice).and_return('rock')
       allow(player_1).to receive(:choice).and_return("scissor")
     end

     it "show result"  do
       game.add_player_1(player_1)
       game.add_player_2(player_2)
       game.record_automatic_player_choice

       expect(game.result).to eq('R2D2')
     end
    end

    describe "#result" do
      before do
        allow(subject).to receive(:automatic_choice).and_return('rock')
        allow(player_1).to receive(:choice).and_return("rock")

      end

      it "show result"  do
        game.add_player_1(player_1)
        game.record_automatic_player_choice

        expect(game.result).to eq('drew')
      end
     end


end
