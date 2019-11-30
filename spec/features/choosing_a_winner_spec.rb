RSpec.feature 'choosing a winner', type: :feature do

  context 'when computer chooses paper' do
    before(:each) do
      allow_any_instance_of(Game).to receive_message_chain(:opponent, :hand).and_return 'Paper'
      enter_name_and_play
    end

    scenario 'confirmation of computer choice' do
      click_on ['ROCK', 'PAPER', 'SCISSORS'].sample

      expect(page).to have_content 'MA-RPS3000 played Paper'
    end

    scenario 'player loses by choosing rock' do
      click_on 'ROCK'
      expect(page).to have_content 'Sam played Rock'
      expect(page).to have_content 'YOU LOSE'
    end

    scenario 'player wins by choosing scissors' do
      click_on 'SCISSORS'
      expect(page).to have_content 'Sam played Scissors'
      expect(page).to have_content 'YOU WIN'
    end

    scenario 'player draws by also choosing paper' do
      click_on 'PAPER'
      expect(page).to have_content 'Sam played Paper'
      expect(page).to have_content 'DRAW'
    end
  end

  context 'when computer chooses rock' do
    before(:each) do
      allow_any_instance_of(Game).to receive_message_chain(:opponent, :hand).and_return 'Rock'
      enter_name_and_play
    end

    scenario 'confirmation of computer choice' do
      click_on ['ROCK', 'PAPER', 'SCISSORS'].sample

      expect(page).to have_content 'MA-RPS3000 played Rock'
    end

    scenario 'player loses by choosing scissors' do
      click_on 'SCISSORS'
      expect(page).to have_content 'Sam played Scissors'
      expect(page).to have_content 'YOU LOSE'
    end

    scenario 'player wins by choosing paper' do
      click_on 'PAPER'
      expect(page).to have_content 'Sam played Paper'
      expect(page).to have_content 'YOU WIN'
    end

    scenario 'player draws by also choosing rock' do
      click_on 'ROCK'
      expect(page).to have_content 'Sam played Rock'
      expect(page).to have_content 'DRAW'
    end
  end

  context 'when computer chooses scissors' do
    before(:each) do
      allow_any_instance_of(Game).to receive_message_chain(:opponent, :hand).and_return 'Scissors'
      enter_name_and_play
    end

    scenario 'confirmation of computer choice' do
      click_on ['ROCK', 'PAPER', 'SCISSORS'].sample

      expect(page).to have_content 'MA-RPS3000 played Scissors'
    end

    scenario 'player loses by choosing paper' do
      click_on 'PAPER'
      expect(page).to have_content 'Sam played Paper'
      expect(page).to have_content 'YOU LOSE'
    end

    scenario 'player wins by choosing rock' do
      click_on 'ROCK'
      expect(page).to have_content 'Sam played Rock'
      expect(page).to have_content 'YOU WIN'
    end

    scenario 'player draws by also choosing scissors' do
      click_on 'SCISSORS'
      expect(page).to have_content 'Sam played Scissors'
      expect(page).to have_content 'DRAW'
    end
  end
end
