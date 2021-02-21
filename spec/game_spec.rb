require "game"
require "players"

describe Game do
  let(:player) { double :Player }
  let(:bot) { double :bot }
  subject { Game.new("Nabonidus", player, 0)}
  before(:each) do
    allow(player).to receive(:new).with(1, "Nabonidus", false)
    allow(player).to receive(:ID).and_return(1)
    allow(player).to receive(:name).and_return("Nabonidus")
    allow(player).to receive(:bot).and_return(false)
    allow(player).to receive(:move).and_return(nil)
    
    allow(bot).to receive(:ID).and_return(2)
    allow(bot).to receive(:name).and_return("Talos")
    allow(bot).to receive(:bot).and_return(true)
    allow(bot).to receive(:move).and_return("R")

    subject.instance_variable_set(:@players, [player, bot])
  end
  

  it "stores players as an array" do
    expect(subject.players).to be_an_instance_of(Array)
  end

  it "has a bot by default" do
    # this one might have to be a live test
    game = described_class.new("Nabonidus", Player)
    expect(game.players.map{ |p| p.bot }).to include(true)
  end

  context "#real_players" do
    it "has one player" do
      # subject { Game.new("Nabonidus", Player)}
      expect(subject.real_players.length).to eq 1
    end

    it "doesn't contain a bot" do
      expect(subject.real_players.map{ |p| p.bot }).not_to include(true)
    end

    it "doesn't contain empty entries" do
      expect(subject.real_players).not_to include("")
    end
  end

  context "#single player" do
    before(:each) do
      allow(player).to receive(:enter_move).with(an_instance_of(String))
    end

    it 'finished? is false at start' do
      expect(subject.finished?).to be false
    end

    it "whose turn? returns player 1" do
      expect(subject.whose_turn?).to eq [1, "Nabonidus"]
    end

    it "adds move to player" do
      expect(player).to receive(:enter_move).with("R")
      subject.add_move(1, "R")
    end

    context "after turn:" do
      before(:each) do
        allow(player).to receive(:move).and_return("R")
      end
      it "raises error if player already has a move" do
        expect { subject.add_move(1, "R") }.to raise_error("Player 1 already has a move")
      end

      it 'finished? is true at end' do
        expect(subject.finished?).to be true
      end

      it "whose turn? throws error after finish" do
        expect{subject.whose_turn?}.to raise_error("All players have taken their turns")
      end
    end

  end

  context "#score" do
    it "raises error when a player has no move" do
      expect{subject.score}.to raise_error("Players haven't entered moves")
    end

    
  end

end