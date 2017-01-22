require 'rps'

describe RockPaperScissors do
  describe '#rock_paper_scissors' do
    it "should output rock paper or scissors" do
      rps = RockPaperScissors.new
      expect(rps.rock_paper_scissors.nil?).to be false
    end
  end
end
