require 'computer'
require 'rockpaperscissors'

describe Computer do
  subject(:computer) { described_class.new }
  let(:rockpaperscissors) { double("RockPaperScissors") }

  before do
    allow(computer).to receive(:rock_paper_scissors).and_return(:paper)
  end


  describe 'points' do
    it "initializes with a default amount of points" do
      expect(computer.wins).to eq(Computer::HANDICAP)
    end
  end

  describe 'rock_paper_scissors' do
    it "returns rock, paper or scissors" do
      expect(computer.rock_paper_scissors).to eq(:paper)
    end
  end
end
