require './app/player' 

describe Player do 

  it 'should respond to name' do 
    player = Player.new 'mohamed'
    expect(player.name).to eq 'mohamed' 
  end

  # it 'can pick a choice' do 
  #   game = double ('Game::CHOICES', "paper")
  #   expect(Game::CHOICES).to eq("paper")
  #   pick_choice = subject.pick_a_choice
  #   expect(pick_choice Game::CHOICES).to eq "paper"
  # end


end