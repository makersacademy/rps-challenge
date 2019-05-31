require 'random_selection'

describe RandomSelection do

  let(:choose) { RandomSelection.new }

  it 'can select rock', focus: true do
    srand(1)
    expect(choose.computer_choice).to eq("paper")
  end

  it 'can select rock', focus: true do
    srand(2)
    expect(choose.computer_choice).to eq("rock")
  end

  it 'can select rock', focus: true do
    srand(3)
    expect(choose.computer_choice).to eq("scissors")
  end
end
