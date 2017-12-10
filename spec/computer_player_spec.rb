require_relative "../lib/computer_player"

describe ComputerPlayer do
  subject(:computer) {described_class.new}

   it "should return a random hand" do
     expect(computer.c_hands).to include(computer.select_hand)
   end

  it 'should return rock' do
    srand(0)
    expect(subject.select_hand).to eq("rock")
  end

  it 'should return paper' do
    srand(1)
    expect(subject.select_hand).to eq("paper")
  end

  it 'should return scissor' do
    srand(3)
    expect(subject.select_hand).to eq("scissors")
  end

end
