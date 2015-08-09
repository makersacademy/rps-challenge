require 'rock_paper_scissors'
describe Game do
  it "can take user selection and assign to attribute" do
    choice = subject.selection("paper")
    expect(subject.user).to eq :paper
  end

  it "randomly assigns computer selection" do
    computer = subject.computer_choice
    expect(subject.computer).to eq computer
  end

  it "evaluates the game and declares winner, or draw" do
    allow(subject.computer).to receive :Paper
    allow(subject.user).to receive :Rock
    subject.evaluate_game
    expect(subject.winner).to eq subject.computer
  end
end
