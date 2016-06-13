require 'game'

describe Game do

  subject { described_class.new }
  let(:rock_input) { :rock }
  let(:scissors_input) { :scissors }
  let(:paper_input) { :paper }
  let(:winning_message) { "Congratulations, you have won" }
  let(:losing_message) { "Sorry, you have lost" }
  let(:draw_message) { "This is awkward, it's a tie" }

  describe "#self.create" do
    it "creates a new instance of itself" do
      game = Game.create
      expect(Game.instance).to eq game
    end
  end

  describe "#play" do

    it "loses the game" do
      subject.player_move(paper_input)
      expect(subject.play(scissors_input)).to eq losing_message
    end

    it "wins the game" do
      subject.player_move(rock_input)
      expect(subject.play(scissors_input)).to eq winning_message
    end

    it "draws the game" do
      subject.player_move(scissors_input)
      expect(subject.play(scissors_input)).to eq draw_message
    end

  end

  describe "#computer_choose_move" do

    it 'chooses a move' do
      allow(subject).to receive(:computer_choice).and_return(rock_input)
      expect(subject.computer_choice).to eq rock_input
    end
  end

  describe "#player_input" do

    it 'accepts user input' do
      expect(subject.player_move(rock_input)).to eq :rock
    end
  end


end
