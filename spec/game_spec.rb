require "game"

describe Game do

  describe "#Creation" do
    it "sets a reference to itself" do
      game_instance = Game.new
      expect(Game.current_game).to eq game_instance
    end
  end
  context "post creation" do
    let(:p1_choice) {double :player_1_choice}
    let(:p2_choice) {double :player_2_choice}
    let(:p1_name)   {double :player_1_name}
    let(:p2_name)   {double :player_2_name}
    let(:player_1)  {double :player_1, name: p1_name, choice: p1_choice}
    let(:player_2)  {double :player_2, name: p2_name, choice: p2_choice}
    let(:rules){double :Rules , compare: :win}
    subject{described_class.new rules}
    before(:each) do
      subject.player_1 = player_1
      subject.player_2 = player_2
    end

    describe "It can return various bits of info about it's players" do
      it "player 1 name" do
        expect(subject.player_1_name).to eq p1_name
      end
      it "player 2 name" do
        expect(subject.player_2_name).to eq p2_name
      end
      it "player 1 choice" do
        expect(subject.player_1_choice).to eq p1_choice
      end
      it "player 2 choice" do
        expect(subject.player_2_choice).to eq p2_choice
      end
    end

    describe "it knows if player one won/drew/lost" do
      it "passes the right things to comparator" do
        subject.player_one_win_state
        expect(rules).to have_received(:compare).with(p1_choice,p2_choice)
      end
      it "expects to report the same as the comparator module" do
        expect(subject.player_one_win_state).to eq :win
      end
    end
  end
end
