feature "move buttons are confirmed" do
    scenario "When rock is pressed, a confirmation message appears" do
      sign_in_and_play
      click_button('Rock!')
      expect(page).to have_content('Chris chose to play Rock')
    end

    scenario "When paper is pressed, a confirmation message appears" do
        sign_in_and_play
        click_button('Paper!')
        expect(page).to have_content('Chris chose to play Paper!')
    end

    scenario "When scissors is pressed, a confirmation message appears" do
        sign_in_and_play
        click_button('Scissors!')
        expect(page).to have_content('Chris chose to play Scissors!')
    end

end