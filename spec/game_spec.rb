require 'game'
  describe Game do
    subject(:game) {described_class.new(player)}
    let(:computer) {double :computer }
    let(:player) {double :player, name: "harry"}
    let(:rock) {"rock"}
    let(:paper) {"paper"}
    let(:scissors) {"scissors"}

      it 'starts with a player' do
        expect(game.player).to eq player
      end
    describe '#choice' do
      it 'sets the players choice to @player_choice ' do
        game.choice(scissors)
        expect(game.player_choice).to eq scissors
      end
        context 'player_choice is rock' do
          it 'sets @winner to computer wins when computer shows paper' do
            allow(game.computer).to receive(:computer_choice).and_return(paper)
            game.choice(rock)
            expect(game.winner).to eq "computer wins"
          end
          it 'sets @winner to player wins when computer shows scissors' do
            allow(game.computer).to receive(:computer_choice).and_return(scissors)
            game.choice(rock)
            expect(game.winner).to eq "harry wins"
          end
          it 'sets @winner game is a tie when computer shows rock' do
            allow(game.computer).to receive(:computer_choice).and_return(rock)
            game.choice(rock)
            expect(game.winner).to eq "game is a tie"
          end
        end
        context 'player_choice is paper' do
          it 'sets @winner to computer wins when computer shows scissors' do
            allow(game.computer).to receive(:computer_choice).and_return(scissors)
            game.choice(paper)
            expect(game.winner).to eq "computer wins"
          end
          it 'sets @winner to player wins when computer shows rock' do
            allow(game.computer).to receive(:computer_choice).and_return(rock)
            game.choice(paper)
            expect(game.winner).to eq "harry wins"
          end
          it 'sets @winner game is a tie when computer shows paper' do
            allow(game.computer).to receive(:computer_choice).and_return(paper)
            game.choice(paper)
            expect(game.winner).to eq "game is a tie"
          end
        end
          context 'player_choice is scissors' do
          it 'sets @winner to computer wins when computer shows rock' do
            allow(game.computer).to receive(:computer_choice).and_return(rock)
            game.choice(scissors)
            expect(game.winner).to eq "computer wins"
          end
          it 'sets @winner to player wins when computer shows paper' do
            allow(game.computer).to receive(:computer_choice).and_return(paper)
            game.choice(scissors)
            expect(game.winner).to eq "harry wins"
          end
          it 'sets @winner game is a tie when computer shows scissors' do
            allow(game.computer).to receive(:computer_choice).and_return(scissors)
            game.choice(scissors)
            expect(game.winner).to eq "game is a tie"
          end
        end
      end
    end
    #   it 'sets @winner to player wins when computer shows scissors' do
    #     allow(game.computer).to receive(:computer_choice).and_return(scissors)
    #     game.choice(rock)
    #     expect(game.winner).to eq "harry wins"
    #   end
    #   it 'sets @winner game is a tie when computer shows rock' do
    #     allow(game.computer).to receive(:computer_choice).and_return(rock)
    #     game.choice(rock)
    #     expect(game.winner).to eq "game is a tie"
    #   end
    #    it 'sets @winner game is a tie when computer shows rock' do
    #     allow(game.computer).to receive(:computer_choice).and_return(rock)
    #     game.choice(rock)
    #     expect(game.winner).to eq "game is a tie"
    #   end
    # end







  #   end
  #   # describe '#scissors' do
  #   #   it 'returns player wins when computer shows paper' do
  #   #     game.scissors(paper)
  #   #     expect(game.winner).to eq "harry wins"
  #   #   end
  #   #   it 'returns computer wins when computer shows rock' do
  #   #     game.scissors(rock)
  #   #     expect(game.winner).to eq "computer wins"
  #   #   end
  #   #   it 'returns the game is a tie when computer shows scissors' do
  #   #       game.scissors(scissors)
  #   #       expect(game.winner).to eq "game is a tie"
  #   #   end
  #   # end
  #   # describe '#paper' do
  #   #   it 'returns player wins when computer shows rock' do
  #   #     game.paper(rock)
  #   #     expect(game.winner).to eq "harry wins"
  #   #   end
  #   #   it 'returns computer wins when computer shows scissors' do
  #   #     game.paper(scissors)
  #   #     expect(game.winner).to eq "computer wins"
  #   #   end
  #   #   it 'returns the game is a tie when computer shows paper' do
  #   #       game.paper(paper)
  #   #       expect(game.winner).to eq "game is a tie"
  #   #   end
  #   # end
  # end