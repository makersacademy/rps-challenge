describe "When selected an option to play and taken to results page" do


  let(:player) {double(:player)}
  let(:computer) {double(:computer)}

  context "The page url" do

    before do
     sign_in_and_play
    end


    xit "should be /results" do
      expect(page.current_path).to eq('vivu')
    end
  end


  context "The page should" do

   before do
     visit('/')
     fill_in('human_player1', with:'Jack Kelly')
     click_button('submit')
   end

    it "have either a win, lose or draw message" do
      allow_any_instance_of(Calculations).to receive(:calculate).and_return(:loser)
      allow_any_instance_of(Computer).to receive(:name).and_return('HAL')
      select('Rock', from: 'choices')
      click_button('Okay!')
      expect(page).to have_content("HAL Wins!")
    end

    it "have either a win, lose or draw message" do
      allow_any_instance_of(Calculations).to receive(:calculate).and_return(:winner)
      allow_any_instance_of(Player).to receive(:name).and_return('Player')
      select('Rock', from: 'choices')
      click_button('Okay!')
      expect(page).to have_content("Player Wins!")
    end

    it "have either a win, lose or draw message" do
      allow_any_instance_of(Calculations).to receive(:calculate).and_return(:draw)
      select('Rock', from: 'choices')
      click_button('Okay!')
      expect(page).to have_content("Draw!")
    end
  end
end
