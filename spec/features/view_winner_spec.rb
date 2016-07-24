feature 'View winner' do

    scenario "When I submit 'Rock' I am told I have won" do
      allow_any_instance_of(weapons).to receive(:sample).and_return('scissors')
      rock_choice
      click_button('View')
      expect(page).to have_content "You won!!"
    end

    scenario "When I submit 'Rock' I am told I have lost" do
      allow_any_instance_of(weapons).to receive(:sample).and_return('Paper')
      rock_choice
      click_button('View')
      expect(page).to have_content "You lose!!"
    end

    scenario "When I submit 'Rock' I am told it's a draw" do
      rock_choice
      click_button('View')
      allow_any_instance_of(weapons).to receive(:sample).and_return('Rock')
      expect(page).to have_content "It's a draw!!"
    end

  end
