require 'computer_player'

describe ComputerPlayer do
  let(:test_move_list)       { %w(rock paper scissors) }
  let(:test_name)            { 'test name' }
  subject(:computer_player) { described_class.new(test_name, test_move_list) }

  describe "#new" do
    it "sets @name using the first passed argument" do
      expect(computer_player.name).to eq test_name
    end
  end

  describe "#move" do
    it "returns a move from @move_list" do
      expect(test_move_list).to include computer_player.move
    end
  end
end
