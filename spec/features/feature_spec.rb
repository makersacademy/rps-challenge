require 'spec_helper'

feature 'Features' do
  feature 'A basic two player game where player one wins' do

    # before(:all) do
    #   srand(67809)
    # end

    p1_name = "Joe"
    p2_name = "Alice"
    p1_choice = "Paper"
    p2_choice = "Rock"
    test_verb = "smothered"

    before do
      sign_in_and_play_basic_2P(p1_name, p2_name)
    end

    describe "Players have signed in" do
      it "shows players names" do
        expect(page).to have_text("#{p1_name} VS #{p2_name}")
      end
    end

    describe "A new game has started" do
      it "tells player 1 it is their turn" do
        expect(page).to have_text("#{p1_name}, you're up! Choose a move.")
      end
    end

    describe "It is player two's turn" do
      it "tells player 2 it is their turn" do
        click_button('Paper')
        expect(page).to have_text("#{p2_name}, you're up! Choose a move.")
      end
    end

    describe "Player two has taken their turn" do
      it "tells player 1 that they won" do
        click_button('Paper')
        click_button('Rock')
        expect(page).to have_text("#{p1_name} beat #{p2_name}! #{p1_name}'s #{p1_choice} #{test_verb} #{p2_name}'s #{p2_choice}")
      end
    end

    describe "The round has finished" do
      it "shows the correct score after a round" do
        click_button('Paper')
        click_button('Rock')
        expect(page).to have_text("#{p1_name}: 1 points --- #{p2_name}: 0 points")
      end
    end

    describe "Players want to start a new round" do
      it "shows the new round button" do
        click_button('Paper')
        click_button('Rock')
        expect(page).to have_button("New Round")
      end
    end
  end

  feature 'A basic two player game where player two wins' do

    # before(:all) do
    #   srand(67809)
    # end

    p1_name = "Joe"
    p2_name = "Alice"
    p1_choice = "Rock"
    p2_choice = "Paper"
    test_verb = "smothered"

    before do
      sign_in_and_play_basic_2P(p1_name, p2_name)
    end

    describe "Players have signed in" do
      it "shows players names" do
        expect(page).to have_text("#{p1_name} VS #{p2_name}")
      end
    end

    describe "A new game has started" do
      it "tells player 1 it is their turn" do
        expect(page).to have_text("#{p1_name}, you're up! Choose a move.")
      end
    end

    describe "It is player two's turn" do
      it "tells player 2 it is their turn" do
        click_button('Rock')
        expect(page).to have_text("#{p2_name}, you're up! Choose a move.")
      end
    end

    describe "Player two has taken their turn" do
      it "tells player 1 that they won" do
        click_button('Rock')
        click_button('Paper')
        expect(page).to have_text("#{p2_name} beat #{p1_name}! #{p2_name}'s #{p2_choice} #{test_verb} #{p1_name}'s #{p1_choice}")
      end
    end

    describe "The round has finished" do
      it "shows the correct score after a round" do
        click_button('Rock')
        click_button('Paper')
        expect(page).to have_text("#{p1_name}: 0 points --- #{p2_name}: 1 points")
      end
    end

    describe "Players want to start a new round" do
      it "shows the new round button" do
        click_button('Rock')
        click_button('Paper')
        expect(page).to have_button("New Round")
      end
    end

  end

end
