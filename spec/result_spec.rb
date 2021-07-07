require 'result'
describe Result do
  it 'should take the player result and computer result and output the winner' do
    result = Result.new
    expect(result.outcome("Rock", "Paper")).to eq("The computer wins amigo!")
  end
  it 'should take the player result and computer result and output the winner' do
    result = Result.new
    expect(result.outcome("Scissors", "Paper")).to eq("You beat the computer amigo!")
  end
  it 'should take the player result and computer result and output the winner' do
    result = Result.new
    expect(result.outcome("Rock", "Rock")).to eq("That's a draw!")
  end
end
