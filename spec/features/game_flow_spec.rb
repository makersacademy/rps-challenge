describe 'Game Flow' do

  describe 'Attack Resolution:' do

    before :each do
      allow_any_instance_of(Array).to receive(:sample).and_return :rock
      login_to_game
      click_button 'paper_button'
    end

    scenario 'Page displays the correct winner' do
      expect(page).to have_content "#{TEST_PLAYER_NAME} wins the round!"
    end

    scenario 'Page displays a button to proceed to next round' do
      expect(page).to have_button "continue_button"
    end

  end

end
