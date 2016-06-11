require 'rps'

describe RPS do

  subject { described_class.new }
  let(:rock_input) { "rock" }
  let(:scissors_input) { "scissors" }
  let(:paper_input) { "paper" }
  let(:winning_message) { "Congratulations player, you have won" }
  let(:losing_message) { "Sorry player, you have lost" }
  let(:draw_message) { "This is awkward, it's a tie" }

  describe "#play" do

    it "runs the game via one command " do
      allow(subject).to receive(:move_chooser).and_return(scissors_input)
      subject.player_input(rock_input)
      expect(subject.play).to eq winning_message
    end

  end

  describe "#computer_choose_move" do

    it 'chooses a move' do
      allow(subject).to receive(:move_chooser).and_return(rock_input)
      expect(subject.computer_choose_move).to eq rock_input
    end
  end

  describe "#player_input" do

    it 'accepts user input' do
      expect(subject.player_input(rock_input)).to eq "rock"
    end
  end

  # # describe "#move_comparison" do
  # #   it "compares rock to scissors" do
  # #     allow(subject).to receive(:computer_choose_move).and_return(scissors_input)
  # #     subject.player_input(rock_input)
  # #     expect(subject.move_comparison).to eq winning_message
  # #   end
  # #
  # #   it "compares rock to paper" do
  # #     allow(subject).to receive(:computer_choose_move).and_return(paper_input)
  # #     subject.player_input(rock_input)
  # #     expect(subject.move_comparison).to eq losing_message
  # #   end
  # #
  # #   it "compares scissors to paper" do
  # #     allow(subject).to receive(:computer_choose_move).and_return(paper_input)
  # #     subject.player_input(scissors_input)
  # #     expect(subject.move_comparison).to eq winning_message
  # #   end
  # #
  # #   it "compares rock to rock" do
  # #     allow(subject).to receive(:computer_choose_move).and_return(rock_input)
  # #     subject.player_input(rock_input)
  # #     expect(subject.move_comparison).to eq draw_message
  # #   end
  #
  # end

end
