require 'app'

describe CalcResult do

  it 'calculates a draw if both choose scissors' do
    test = CalcResult.new("scissors", :scissors)
    expect(test.result).to eq "it's a draw!"
  end

  it 'returns a loss if player chooses rock and computer, paper' do
    test = CalcResult.new("rock", :paper)
    expect(test.result).to eq "Unlucky, you lost."   
  end

  it 'returns a win if player chooses paper and computer, rock' do
    test = CalcResult.new("paper", :rock)
    expect(test.result).to eq "Congrats! You're a winner baby!"  
  end

end
