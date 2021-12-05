feature 'results page' do

  feature 'shared features' do
    before do
      visit ('/')
      click_button('one player')
      sign_in
      click_button('ROCK')
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
    before do
      visit ('/')
      click_button('one player')
      sign_in
      click_button('ROCK')
    end

    scenario 'presents the winner of the round' do
      expect(page).to have_content 'Computer wins!'
    end
  end

  # feature 'two player mode' do
  #   before do 
  #     visit ('/')
  #     click_button('two player')
  #     fill_in('player2', with: 'Quackers')
  #     sign_in
  #     click_button('ROCK')
  #     click_button('SCISSORS')
  #   end

  #   scenario 'presents the winner of the round' do
  #     expect(page).to have_content('Patos wins!')
  #   end
  # end
end
