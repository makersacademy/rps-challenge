describe "When selected an option to play and taken to results page" do




  context "The page url" do

    before do
     sign_in_and_play
    end


    it "should be /results" do
      expect(page.current_path).to eq('/results')
    end
  end


  context "The page should" do

   before do
     visit('/')
     fill_in('human_player1', with:'Jack Kelly')
     click_button('submit')
   end

    it "have either a win, lose or draw message" do
      allow_any_instance_of(Game).to receive(:calculate).and_return('HAL Wins!')
      click_button('ROCK')
      expect(page).to have_content("HAL Wins!")
    end

    it "have either a win, lose or draw message" do
      allow_any_instance_of(Game).to receive(:calculate).and_return('Player Wins!')
      click_button('ROCK')
      expect(page).to have_content("Player Wins!")
    end

    it "have either a win, lose or draw message" do
      allow_any_instance_of(Game).to receive(:calculate).and_return('Draw!')
      click_button('ROCK')
      expect(page).to have_content("Draw!")
    end
  end
end
