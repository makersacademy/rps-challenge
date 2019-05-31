require 'random_selection'

describe RandomSelection do
  it 'can select rock', focus: true do
    srand(1)
    r = RandomSelection.new
    expect(r.computer_choice).to eq("paper")
  end

  it 'can select rock', focus: true do
    srand(2)
    r = RandomSelection.new
    expect(r.computer_choice).to eq("rock")
  end

  it 'can select rock', focus: true do
    srand(3)
    r = RandomSelection.new
    expect(r.computer_choice).to eq("scissors")
  end
end
