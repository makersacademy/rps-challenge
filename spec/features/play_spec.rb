feature 'Playing RPS' do
  context 'Computer will choose scissors for this test' do
    scenario 'When player submits rock receive confirmation that player has won' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_single
      click_button('rock')
      expect(page).to have_content 'rock smashes scissors'
      expect(page).to have_content 'James wins!'
    end
  end

  context 'Computer wins once, player will win once' do
    scenario 'After two rounds the score will be one to one' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_single
      click_button('rock')
      click_button('Next')
      click_button('paper')
      expect(page).to have_content 'James: 1'
      expect(page).to have_content '1 :Computer'
    end
  end
end
