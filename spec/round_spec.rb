require 'round'

describe Round do 

  #need to find a way to access the weapon function of computer when computer is a mock!

  

  describe 'Player chooses paper' do
    subject(:round) { Round.new(player_weapon, Game.new)}
    let(:player_weapon) { 'paper' }
    let(:computer_weapon) { double :computer_weapon }
      it 'paper v paper draws' do
        srand(1) #returns computer weapon as paper
        # allow(round).to receive(:player_weapon).and_return('paper')
        allow(round).to receive(:computer_weapon)
        expect(subject.engine).to eq('draw')
      end

    it 'paper beats rock' do
      srand(2) #returns computer weapon as rock
      # allow(round).to receive(:player_weapon).and_return('paper')
      allow(round).to receive(:computer_weapon)
      expect(subject.engine).to eq('You chose wisely')
    end

    it 'paper loses to scissors' do
      srand(3) #returns computer weapon as scissors
      # allow(round).to receive(:player_weapon).and_return('paper')
      allow(round).to receive(:computer_weapon)
      expect(subject.engine).to eq('You did not choose wisely')
    end
  end
end
