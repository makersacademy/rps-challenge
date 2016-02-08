require 'game'

describe Game do

  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player_1 }

  describe "#initialize" do

    it 'creates an instance of the player class and passes in the name given as an argument' do
      expect(game.player_1.name).to eq(player_1)
    end

  end


  describe "#computer_choose_weapon" do

    it 'selects a random weapon from the weapon array and saves it to the computer_weapon variable which can then be called' do
      game.computer_choose_weapon
      expect(game.computer_weapon).not_to eq(nil)
    end

  end

  describe "#who_wins" do

    context "drawing" do

      it 'player chooses rock and computer chooses rock' do
        allow(player_1).to receive(:weapon).and_return("rock")
        allow(game).to receive(:computer_weapon).and_return(:rock)
        game.who_wins
        expect(game.draw).to be_truthy
      end

      it 'player chooses paper and computer chooses paper' do
        allow(player_1).to receive(:weapon).and_return("paper")
        allow(game).to receive(:computer_weapon).and_return(:paper)
        game.who_wins
        expect(game.draw).to be_truthy
      end

      it 'player chooses scissors and computer chooses scissors' do
        allow(player_1).to receive(:weapon).and_return("scissors")
        allow(game).to receive(:computer_weapon).and_return(:scissors)
        game.who_wins
        expect(game.draw).to be_truthy
      end

    end

    context "loosing" do

      it 'player chooses rock and computer chooses paper' do
        allow(player_1).to receive(:weapon).and_return("rock")
        allow(game).to receive(:computer_weapon).and_return(:paper)
        game.who_wins
        expect(game.player_winner).to be_falsey
      end

      it 'player chooses paper and computer chooses scissors' do
        allow(player_1).to receive(:weapon).and_return("paper")
        allow(game).to receive(:computer_weapon).and_return(:scissors)
        game.who_wins
        expect(game.player_winner).to be_falsey
      end

      it 'player chooses scissors and computer chooses rock' do
        allow(player_1).to receive(:weapon).and_return("scissors")
        allow(game).to receive(:computer_weapon).and_return(:rock)
        game.who_wins
        expect(game.player_winner).to be_falsey
      end

    end

    context "winning" do

      it 'player chooses paper and computer chooses rock' do
        allow(player_1).to receive(:weapon).and_return("paper")
        allow(game).to receive(:computer_weapon).and_return(:rock)
        game.computer_choose_weapon
        game.who_wins
        expect(game.player_winner).to be_truthy
      end

      it 'player chooses scissors and computer chooses paper' do
        allow(player_1).to receive(:weapon).and_return("scissors")
        allow(game).to receive(:computer_weapon).and_return(:paper)
        game.computer_choose_weapon
        game.who_wins
        expect(game.player_winner).to be_truthy
      end

      it 'player chooses rock and computer chooses scissors' do
        allow(player_1).to receive(:weapon).and_return("rock")
        allow(game).to receive(:computer_weapon).and_return(:scissors)
        game.computer_choose_weapon
        game.who_wins
        expect(game.player_winner).to be_truthy
      end

    end

  end

end
