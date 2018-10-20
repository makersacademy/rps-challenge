feature "Enter player name" do
  scenario "submitted name should appear on screen in 1 player mode" do
    one_player_sign_in_and_play
    expect(page).to have_content "Imtiyaz vs Computer"
  end

  context "two player mode" do
    scenario "submitted names should appear on screen in 2 player mode" do
      two_player_sign_in_and_play
      expect(page).to have_content "Mario vs Luigi"
    end

    context "'Computer' entered into a name field" do
      scenario "should raise error if 'Computer' enter as a name" do
        visit '/'
        click_button '2 Player'
        fill_in(:player_1_name, with: "Mario")
        fill_in(:player_2_name, with: "Computer")
        click_button 'Submit'
        expect(page).to have_content("Error! 'Computer' is not a valid name")
      end
    end
  end
end
