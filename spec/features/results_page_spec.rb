feature 'results page' do

  feature 'shared features' do
    before do
      one_player_sign_in_and_play
    end

    scenario 'user has the option to play again' do
      click_on('PLAY ANOTHER ROUND')
      expect(page).to have_content 'Patos vs. Computer'
    end

    scenario 'user has the option to end game and return to homepage' do
      click_on('RETURN TO HOMEPAGE')
      expect(page).to have_content "Let's play Rock Paper Scissors!"
    end
  end

  feature 'one player mode' do
    scenario 'presents the winner of the round' do
      one_player_sign_in_and_play
      expect(page).to have_content 'Computer wins!'
    end
  end

  feature 'two player mode' do
    scenario 'presents the winner of the round' do
      two_player_sign_in_and_play
      expect(page).to have_content 'Patos wins!'
    end
  end
end
