feature 'feature - shows win, loss or draw' do

  context "Classic game" do
    context "1 Player" do
      before(:each) do
        sign_in
      end

      scenario "before user selection" do
        result = find_by_id('result')
        expect(result).to have_text ""
      end

      scenario "after user selection" do
        click_button 'paper'
        result = find_by_id('result')
        expect(result).to have_text("")
      end
    end

    context "2 Players" do
      before(:each) do
        sign_in_2_player
      end

      scenario "before user selection" do
        result = find_by_id('result')
        expect(result).to have_text ""
      end

      scenario "after user selection" do
        click_button 'paper'
        click_button 'paper'
        result = find_by_id('result')
        expect(result).to have_text("It's a draw.")
      end
    end
  end

  context "RPSLS game" do
    context "1 Player" do
      before(:each) do
        sign_in_1_player_rpsls
      end

      scenario "before user selection" do
        result = find_by_id('result')
        expect(result).to have_text ""
      end

      scenario "after user selection" do
        click_button 'paper'
        result = find_by_id('result')
        expect(result).to have_text("You") || have_text("It's a draw.")
      end
    end

    context "2 Players" do
      before(:each) do
        sign_in_2_player_rpsls
      end

      scenario "before user selection" do
        result = find_by_id('result')
        expect(result).to have_text ""
      end

      scenario "after user selection" do
        click_button 'paper'
        click_button 'paper'
        result = find_by_id('result')
        expect(result).to have_text "It's a draw."
      end
    end
  end

end
