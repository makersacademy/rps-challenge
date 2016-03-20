describe 'Result Page' do

  describe 'Attack Resolution:' do

    before :each do
      login_to_game

    end

    scenario 'Page displays the correct winner if p1' do
      allow_any_instance_of(Array).to receive(:sample).and_return :rock
      click_button 'paper_button'
      expect(page).to have_content "#{TEST_PLAYER_NAME} wins the round!"
    end

    scenario 'Page displays the correct winner if p2' do
      allow_any_instance_of(Array).to receive(:sample).and_return :lizard
      click_button 'paper_button'
      expect(page).to have_content "Bob wins the round!"
    end

    scenario 'Page displays the correct winner if draw' do
      allow_any_instance_of(Array).to receive(:sample).and_return :paper
      click_button 'paper_button'
      expect(page).to have_content "draw"
    end

    scenario 'Page displays a button to proceed to next round' do
      click_button 'paper_button'
      expect(page).to have_button 'continue_button'
    end

  end

end
