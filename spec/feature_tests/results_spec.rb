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
    sign_in_and_play
   end

    it "have either a win, lose or draw message" do
      expect(page).to have_content("Draw!").or(have_content("Jack Kelly Wins!")).or(have_content("HAL Wins!"))
    end
  end
end
