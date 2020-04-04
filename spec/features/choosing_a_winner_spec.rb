RSpec.feature 'playing and choosing a winner', type: :feature do

  context 'when computer chooses paper' do
    before(:each) do
      allow_any_instance_of(Game).to receive_message_chain(:opponent, :hand).and_return 'Paper'
      enter_name_and_play
    end

    scenario 'the game confirms opponent has chosen paper' do
      click_on ['ROCK', 'PAPER', 'SCISSORS', 'LIZARD', 'SPOCK'].sample
      expect(page).to have_content 'MA-RPS3000 played Paper'
    end

    scenario 'player loses by choosing rock' do
      click_on 'ROCK'
      expect(page).to have_content 'you lose'
    end

    scenario 'player loses by choosing spock' do
      click_on 'SPOCK'
      expect(page).to have_content 'you lose'
    end

    scenario 'player wins by choosing scissors' do
      click_on 'SCISSORS'
      expect(page).to have_content 'you win'
    end

    scenario 'player wins by choosing lizard' do
      click_on 'LIZARD'
      expect(page).to have_content 'you win'
    end

    scenario 'player draws by also choosing paper' do
      click_on 'PAPER'
      expect(page).to have_content 'draw'
    end
  end

  context 'when computer chooses rock' do
    before(:each) do
      allow_any_instance_of(Game).to receive_message_chain(:opponent, :hand).and_return 'Rock'
      enter_name_and_play
    end

    scenario 'the game confirms opponent has chosen rock' do
      click_on ['ROCK', 'PAPER', 'SCISSORS', 'LIZARD', 'SPOCK'].sample
      expect(page).to have_content 'MA-RPS3000 played Rock'
    end

    scenario 'player loses by choosing scissors' do
      click_on 'SCISSORS'
      expect(page).to have_content 'you lose'
    end

    scenario 'player loses by choosing lizard' do
      click_on 'LIZARD'
      expect(page).to have_content 'you lose'
    end

    scenario 'player wins by choosing paper' do
      click_on 'PAPER'
      expect(page).to have_content 'you win'
    end

    scenario 'player wins by choosing spock' do
      click_on 'SPOCK'
      expect(page).to have_content 'you win'
    end

    scenario 'player draws by also choosing rock' do
      click_on 'ROCK'
      expect(page).to have_content 'draw'
    end
  end

  context 'when computer chooses scissors' do
    before(:each) do
      allow_any_instance_of(Game).to receive_message_chain(:opponent, :hand).and_return 'Scissors'
      enter_name_and_play
    end

    scenario 'the game confirms opponent has chosen scissors' do
      click_on ['ROCK', 'PAPER', 'SCISSORS', 'LIZARD', 'SPOCK'].sample
      expect(page).to have_content 'MA-RPS3000 played Scissors'
    end

    scenario 'player loses by choosing paper' do
      click_on 'PAPER'
      expect(page).to have_content 'you lose'
    end

    scenario 'player loses by choosing lizard' do
      click_on 'LIZARD'
      expect(page).to have_content 'you lose'
    end

    scenario 'player wins by choosing rock' do
      click_on 'ROCK'
      expect(page).to have_content 'you win'
    end

    scenario 'player wins by choosing spock' do
      click_on 'SPOCK'
      expect(page).to have_content 'you win'
    end

    scenario 'player draws by also choosing scissors' do
      click_on 'SCISSORS'
      expect(page).to have_content 'draw'
    end
  end

  context 'when computer chooses lizard' do
    before(:each) do
      allow_any_instance_of(Game).to receive_message_chain(:opponent, :hand).and_return 'Lizard'
      enter_name_and_play
    end

    scenario 'the game confirms opponent has chosen lizard' do
      click_on ['ROCK', 'PAPER', 'SCISSORS', 'LIZARD', 'SPOCK'].sample
      expect(page).to have_content 'MA-RPS3000 played Lizard'
    end

    scenario 'player loses by choosing paper' do
      click_on 'PAPER'
      expect(page).to have_content 'you lose'
    end

    scenario 'player loses by choosing spock' do
      click_on 'SPOCK'
      expect(page).to have_content 'you lose'
    end

    scenario 'player wins by choosing rock' do
      click_on 'ROCK'
      expect(page).to have_content 'you win'
    end

    scenario 'player wins by choosing scissors' do
      click_on 'SCISSORS'
      expect(page).to have_content 'you win'
    end

    scenario 'player draws by also choosing lizard' do
      click_on 'LIZARD'
      expect(page).to have_content 'draw'
    end
  end

  context 'when computer chooses spock' do
    before(:each) do
      allow_any_instance_of(Game).to receive_message_chain(:opponent, :hand).and_return 'Spock'
      enter_name_and_play
    end

    scenario 'the game confirms opponent has chosen spock' do
      click_on ['ROCK', 'PAPER', 'SCISSORS', 'LIZARD', 'SPOCK'].sample
      expect(page).to have_content 'MA-RPS3000 played Spock'
    end

    scenario 'player loses by choosing rock' do
      click_on 'ROCK'
      expect(page).to have_content 'you lose'
    end

    scenario 'player loses by choosing scissors' do
      click_on 'SCISSORS'
      expect(page).to have_content 'you lose'
    end

    scenario 'player wins by choosing paper' do
      click_on 'PAPER'
      expect(page).to have_content 'you win'
    end

    scenario 'player wins by choosing lizard' do
      click_on 'LIZARD'
      expect(page).to have_content 'you win'
    end

    scenario 'player draws by also choosing spock' do
      click_on 'SPOCK'
      expect(page).to have_content 'draw'
    end
  end
end
