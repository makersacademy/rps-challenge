require 'ai_computer'

feature "The computer announces what is has picked" do

  scenario "When asked the computer can consistantly say what it has picked" do
    computer = AI.new
    result = []
    1000.times { result.push(computer.choice) }
    expect(result.uniq.size).to eq 1
  end
end