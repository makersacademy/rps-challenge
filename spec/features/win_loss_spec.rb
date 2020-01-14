require 'decider'

feature 'win loss decider' do
  scenario 'R-R' do
    d = Decider.new("Rock", "Rock")
    expect(d.result).to eq "drew"
  end
  scenario 'R-P' do
    d = Decider.new("Rock", "Paper")
    expect(d.result).to eq "lose"
  end
  scenario 'R-S' do
    d = Decider.new("Rock", "Scissors")
    expect(d.result).to eq "win"
  end

  scenario 'P-R' do
    d = Decider.new("Paper", "Rock")
    expect(d.result).to eq "win"
  end
  scenario 'P-P' do
    d = Decider.new("Paper", "Paper")
    expect(d.result).to eq "drew"
  end
  scenario 'P-S' do
    d = Decider.new("Paper", "Scissors")
    expect(d.result).to eq "lose"
  end

  scenario 'S-R' do
    d = Decider.new("Scissors", "Rock")
    expect(d.result).to eq "lose"
  end
  scenario 'S-P' do
    d = Decider.new("Scissors", "Paper")
    expect(d.result).to eq "win"
  end
  scenario 'S-S' do
    d = Decider.new("Scissors", "Scissors")
    expect(d.result).to eq "drew"
  end
end
