require 'computer'

describe Computer do
  subject { described_class.new }
  choices = ["Rock", "Paper", "Scissors"]

  it "picks a weapon" do
    expect(choices).to include subject.choose
  end
end
