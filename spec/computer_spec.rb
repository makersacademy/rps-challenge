require 'computer'

describe 'Computer' do

  let(:computer) { Computer.new }
  
  describe '.move' do
    it "returns the computers move" do
      computer.randomly_choose("rock")
      expect(computer.move).to eq "rock"
    end
  end

  describe '.randomly_choose' do 
    it "randomly chooses between Rock, Paper, or Scissors" do
      computer.randomly_choose
      expect(["rock", "paper", "scissors"]).to include(computer.move)
    end
  end
end
