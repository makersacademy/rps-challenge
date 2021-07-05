require "computer"

describe Computer do
  it "randomly selects rock, paper or scissors" do
    subject = Computer.new
    allow(subject).to receive(:move).and_return("Rock")
    expect(subject.move).to eq("Rock")
  end
end
