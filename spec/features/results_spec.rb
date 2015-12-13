feature 'Monitoring the results' do

  before do
    allow(Kernel).to receive(:rand).and_return(2)
  end

  feature 'Declaring the round result'do
    scenario 'Declares rock beats scissors' do
      sign_in_and_play
      click_button('Rock')
      click_button('Outcome')
      expect(page).to have_content "Ed won this round!"
    end

    scenario 'Declares a draw' do
      sign_in_and_play
      click_button('Scissors')
      click_button('Outcome')
      expect(page).to have_content "This round was a draw!"
    end
  end

  feature 'Monitoring the round number' do
    scenario 'First round should be 1' do
      sign_in_and_play
      expect(page).to have_content 'Round 1'
    end

    scenario 'First round should be 2' do
      play_a_round
      expect(page).to have_content 'Round 2'
    end
  end

  feature 'Monitoring the scores' do
    scenario 'Start with 0 points' do
      sign_in_and_play
      expect(page).to have_content 'Ed\'s score: 0'
    end

    scenario 'Winner should have 1 point' do
      play_a_round
      expect(page).to have_content 'Ed\'s score: 1'
    end
  end
end
