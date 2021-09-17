require 'game'

describe Game do
  it 'return the choices' do
    expect(subject.choices).to eq(["Rock", "Paper", "Scissors", "Lizard", "Spock"])
  end

  it 'chooses randomly' do
    expect(subject.random_choice).to eq('Rock').or eq('Paper').or eq('Scissors').or eq('Lizard').or eq('Spock')
  end

  it 'shows who wins' do
    expect(subject.result("Rock", "Paper")).to eq("You lose")
    expect(subject.result("Scissors", "Paper")).to eq("You win")
  end

  it 'shows if it is a draw' do
    expect(subject.result("Rock", "Rock")).to eq("This is a draw")
  end

  it 'shows statement' do
    expect(subject.statement("Rock", "Paper")).to eq("Paper covers Rock")
  end
end
