require "game"

describe Game do
  describe "#comp_move" do
    it "returns a valid move for RPS" do
    expect(subject.valid_moves).to include (subject.comp_move)
    end
  end
end
