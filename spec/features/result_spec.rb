feature "Result" do

  let(:computer_rock) { allow_any_instance_of(Game).to receive(:pc_weapon).and_return('rock') }
  let(:computer_paper) { allow_any_instance_of(Game).to receive(:pc_weapon).and_return('paper') }
  let(:computer_scissors) { allow_any_instance_of(Game).to receive(:pc_weapon).and_return('scissors') }

  let(:player_wins) { 'Player wins this game' }
  let(:computer_wins) { 'Computer wins this game' }
  let(:game_draws) { "It's a draw" }

  describe "player chooses rock" do
      scenario 'player wins' do
        sign_in_and_play
        computer_scissors
        click_on('Rock')
        expect(page).to have_content(player_wins)
      end

      scenario 'player loses' do
        sign_in_and_play
        computer_paper
        click_on('Rock')
        expect(page).to have_content(computer_wins)
      end

      scenario 'player draws' do
        sign_in_and_play
        computer_rock
        click_on('Rock')
        expect(page).to have_content(game_draws)
      end
    end

  describe "player chooses paper" do
      scenario 'player wins' do
        sign_in_and_play
        computer_rock
        click_on('Paper')
        expect(page).to have_content(player_wins)

      end

      scenario 'player loses' do
        sign_in_and_play
        computer_scissors
        click_on('Paper')
        expect(page).to have_content(computer_wins)
      end

      scenario 'player draws' do
        sign_in_and_play
        computer_paper
        click_on('Paper')
        expect(page).to have_content(game_draws)
      end
    end

    describe "player chooses scissors" do
      scenario 'player wins' do
        sign_in_and_play
        computer_paper
        click_on('Scissors')
        expect(page).to have_content(player_wins)
      end

      scenario 'player loses' do
        sign_in_and_play
        computer_rock
        click_on('Scissors')
        expect(page).to have_content(computer_wins)
      end

      scenario 'player draws' do
        sign_in_and_play
        computer_scissors
        click_on('Scissors')
        expect(page).to have_content(game_draws)
      end
    end

end
