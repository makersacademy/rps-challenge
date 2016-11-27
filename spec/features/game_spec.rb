require 'spec_helper'

  feature Game do

    before(:each) do
      visit ("/")
      fill_in("player", :with => "Courtney")
      click_button("Submit")
    end

    scenario 'It should test that the player name is displayed in welcome message when page opens' do
      expect(page).to have_content("Welcome Courtney")
    end

    # scenario 'It should test that rock button can be clicked' do
    #   click_button("Rock")
    # end
    #
    # scenario 'It should test that paper button can be clicked' do
    #   click_button("Paper")
    # end
    #
    # scenario 'It should test that scissors button can be clicked' do
    #   click_button("Scissors")
    # end



  end
