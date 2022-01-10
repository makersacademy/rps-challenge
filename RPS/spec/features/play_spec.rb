require 'spec_helper'

feature "playing RPS" do
  PLAY_SEED = 221563
    before do
      sign_in_and_play
    end

    scenario "marketeer chooses either r,p,s" do
      expect(page).to have_button "Rock"
      expect(page).to have_button "Paper"
      expect(page).to have_button "Scissors"
    end


      scenario "chooses a shape" do
      click_button "Rock"
      expect(page).to have_content "You chose Rock!"
    end

    scenario "chooses Rock" do
        click_button "Rock"

        shapes = find(:css, "#opponent").text

        expect(possible_shapes).to include shapes  
    end

    scenario "chooses random option" do
      srand(PLAY_SEED)
      click_button "Rock"

      expect(page).to have_content "Opponent chose Scissors!"
    end


    def possible_shapes
      [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!" }
    end
end