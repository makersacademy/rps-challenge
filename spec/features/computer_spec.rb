require 'computer'

describe Computer do
  it 'plays rock, paper or scissors' do
    # expect(Computer.go).to be_in(["Rock", "Paper", "Scissors"])
    expect(Computer.go).to eq('Rock').or(eq('Paper')).or(eq('Scissors'))
  end
end
