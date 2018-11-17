require 'computer_player'

describe Computer do
  it 'should select a random item from a list' do
    subject = Computer.new
    subject.computer_choice
    expect(["Rock", "Paper", "Scissors"]).to include subject.computer_choice
  end
end
