require 'game'

describe Game do

  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player_1 }

  describe "#initialize" do

    it 'creates an instance of the player class and passes in the name given as an argument' do
      expect(game.player_1.name).to eq(player_1)
    end

  end

  # describe "#choose_weapon" do
  #
  #   it 'should call set_weapon with appropriate argument, (rock, paper or scissors, depending on what the player chooses)' do
  #     expect(game.choose_weapon("paper")).to receive(:set_weapon).with("paper")
  #   end
  #
  # end

  describe "#computer_choose_weapon" do

    it 'selects a random weapon from the weapon array and saves it to the computer_weapon variable which can then be called' do
      game.computer_choose_weapon
      expect(game.computer_weapon).not_to eq(nil)
    end

  end

  describe "#who_wins" do

    it 'player draw - correctly assesses the winner if player chooses rock and computer chooses rock' do
      allow(game).to receive(:computer_weapon).and_return("rock")
      allow(player_1).to receive(:weapon).and_return("rock")
      game.who_wins
      expect(game.draw).to be_truthy
    end

    it 'player loose - correctly assesses the winner if player chooses rock and computer chooses paper' do
      allow(game).to receive(:computer_weapon).and_return("paper")
      allow(player_1).to receive(:weapon).and_return("rock")
      game.who_wins
      expect(game.player_winner).to be_falsey
    end

    it 'player wins - correctly assesses the winner if player chooses paper and computer chooses rock' do
      allow(game).to receive(:computer_weapon).and_return("rock")
      allow(player_1).to receive(:weapon).and_return("paper")
      game.computer_choose_weapon
      game.who_wins
      expect(game.player_winner).to be_truthy
    end

  end

end
