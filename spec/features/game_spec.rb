require_relative './web_helpers'

feature 'Play' do
  context'Enter player1' do
    scenario 'submitting only player1 name' do
      sign_in_and_play_player1
      expect(page).to have_content "Sorry, missing player(s)"
    end
  end

  context 'Enter player2' do
    scenario 'submitting only player2 name'do
      sign_in_and_play_player2
      expect(page).to have_content "Sorry, missing player(s)"
    end
  end
  context 'Enter player1 and player2 names' do
    scenario 'submitting player1, player2 and 2 different options' do
      sign_in_and_play
      expect(page).to have_content "player2 wins!"
    end
  end
  context 'Enter player1 and player2' do
    scenario 'submitting player1 and player2 names and 2 same options'do
      sign_in_and_play_tie
      expect(page).to have_content "This is a tie!"
    end
  end
end
