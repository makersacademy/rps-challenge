require_relative '../../app.rb'

feature RPSWeb do

  let(:player) { 'Dione' }

  feature 'Signing into the game' do
    scenario 'Should allow player to input name' do
      sign_in_and_play
      expect(page).to have_content "#{player} vs. The Enemy"
    end
  end

  feature 'Shows player\'s weapon options' do
    scenario 'Choosing ROCK' do
      sign_in_and_play
      click_link('ROCK')
      expect(page).to have_content 'You selected ROCK'
    end

    scenario 'Choosing PAPER' do
      sign_in_and_play
      click_link('PAPER')
      expect(page).to have_content 'You selected PAPER'
    end

    scenario 'Choosing SCISSORS' do
      sign_in_and_play
      click_link('SCISSORS')
      expect(page).to have_content 'You selected SCISSORS'
    end
  end

  feature 'Player choosing any type of weapon' do
    scenario 'Shows the line where randomly selected enemy weapon is shown' do
      sign_in_and_play
      click_link('SCISSORS')
      expect(page).to have_content 'Your enemy selected'
    end
  end
end
