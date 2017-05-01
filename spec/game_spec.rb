require "./lib/game"

describe Game do

  let(:player_1) { double(:player_1)}
  let(:cpu_player) { double(:cpu_player)}
  let(:subject) { described_class.new(player_1, cpu_player) }

  describe "#setup" do
    it "checks that the game exists" do
      expect(subject).to be_an_instance_of(described_class)
    end

    it "sees that the players are used" do
      expect(subject.playing).to include cpu_player
    end
  end

  describe "#attacking" do
      it "finds the a cpu choice" do
       expect(Game::OPTIONS).to include :rock
     end

    it "establishes whose turn it is" do
      expect(subject.current_player).to eq player_1
    end
  end

  describe '#switching_turns' do
    it 'switches the turn' do
      subject.change_turn
    expect(subject.current_player).to eq cpu_player
    end
  end

  describe "#result" do
    it "compares hands" do
    allow(player_1).to receive(:name) {"Chris"}
    allow(player_1).to receive(:hand) { :rock }
    allow(cpu_player).to receive(:hand) { :scissors }
    player_1.hand(:rock)
    cpu_player.hand(:scissors)
    expect(subject.result).to eq "Chris"
    end
  end

end
