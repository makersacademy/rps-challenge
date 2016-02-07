feature 'declare the results' do
  context 'the computer chooses paper' do
    before(:each) do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    end

    scenario 'the player chose paper' do
      register_and_play
      choose("paper")
      click_button 'OK'
      expect(page).to have_content 'It\'s a draw.'
    end

    scenario 'the player chose rock' do
      register_and_play
      choose("rock")
      click_button 'OK'
      expect(page).to have_content 'Sorry, you lost.'
    end

    scenario 'the player chose scissors' do
      register_and_play
      choose("scissors")
      click_button 'OK'
      expect(page).to have_content 'Congratulations, you won!'
    end
  end
end
