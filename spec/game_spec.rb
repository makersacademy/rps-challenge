require 'game'

describe Game do
  it 'return the choices' do
    expect(subject.choices).to eq(["Rock", "Paper", "Scissors"])
  end

  it 'chooses randomly' do
    expect(subject.random_choice).to eq('Rock').or eq('Paper').or eq('Scissors')
  end

  it 'shows who wins' do
    expect(subject.result("Rock", "Paper")).to eq("Computer wins")
    expect(subject.result("Scissors", "Paper")).to eq("Player wins")
  end

  it 'shows if it is a draw' do
    expect(subject.result("Rock", "Rock")).to eq("This is a draw")
  end
end
