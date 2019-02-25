require 'computer'

describe Computer do
  it 'randomly chooses rock, paper, or scissors' do
    expect(Game::CHOICES).to include(Computer.choice)
  end 
end
