require 'player'

describe Player do 
  subject(:player) {Player.new("Gina")}


  context '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq "Gina"
    end
  end

  context "#play('Rock')" do
    it "if player selects Rock attack is set to 'Rock' " do
      player.play('Rock')
      expect(player.attack).to eq "Rock"
    end
    it 'if computer also selects Rock' do 
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Rock')
      expect(player.play('Rock')).to eq "Computer entered Rock\n it is a draw"
    end 
    it 'if player selects Rock and computer selects paper' do
      
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Paper')
      expect(player.play('Rock')).to eq "Computer entered Paper\n Paper covers rock - You loose"
    end 
    it 'if  player selects Rock and computer selects Scissors' do
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Scissors')
      expect(player.play('Rock')).to eq "Computer entered Scissors\n Rock bashes scissors - You win"
    end
  end 

  context "#play('Paper')" do
    it "if player selects Rock attack is set to 'Rock' " do
      player.play('Paper')
      expect(player.attack).to eq "Paper"
    end
    it 'if computer also selects Paper' do 
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Paper')
      expect(player.play('Paper')).to eq "Computer entered Paper\n it is a draw"
    end 
    it 'if player selects Paper and computer selects Rock' do
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Rock')
      expect(player.play('Paper')).to eq "Computer entered Rock\n Paper covers Rock - You win"
    end 
    it 'if  player selects Paper and computer selects Scissors' do
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Scissors')
      expect(player.play('Paper')).to eq "Computer entered Scissors\n Scissors cuts Paper - You lose"
    end
  end 

  context "#play('Scissors')" do
    it "if player selects Scissors attack is set to 'Rock' " do
      player.play('Scissors')
      expect(player.attack).to eq "Scissors"
    end
    it 'if computer also selects Scissors' do 
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Scissors')
      expect(player.play('Scissors')).to eq "Computer entered Scissors\n it is a draw"
    end 
    it 'if player selects Scissors and computer selects Rock' do
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Rock')
      expect(player.play('Scissors')).to eq "Computer entered Rock\n Rock smashes Scissors - You lose"
    end 
    it 'if  player selects Scissors and computer selects paper' do
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Paper')
      expect(player.play('Scissors')).to eq "Computer entered Paper\n Scissors cuts Paper - You win"
    end
  end 

  context "#total" do 
    it 'if players wins a round player score goes up by one'  do 
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Paper')
      player.play('Scissors')
      expect(player.player_total).to eq 1 
    end 
    it 'if computer wins a round score, computer score goes up by one' do 
      allow_any_instance_of(Computer).to receive(:select_object).and_return('Paper')
      player.play('Rock')
      expect(player.computer_total).to eq 1 
    end 
  end 



end 