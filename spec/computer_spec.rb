require 'computer'

describe 'Computer' do

let(:computer) { Computer.new }
  
  it "should initialize with it's move choice as nil" do
    expect(computer.move).to eq nil
  end

  describe '#randomly_choose' do 
    it "randomly chooses between Rock, Paper, or Scissors" do
      computer.randomly_choose
      expect(["Rock", "Paper", "Scissors"]).to include(computer.move)
    end
  end
end