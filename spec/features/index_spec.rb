require 'spec_helper'

  feature RPS do

    before(:each) do
      visit ("/")
      fill_in("player", :with => "Courtney")
      click_button("Submit")
    end

    scenario 'Should display rock button' do
      click_button("Rock")
      # expect(page).to have_text "You choose Rock"
    end

    scenario 'Should display paper button' do
      click_button("Paper")
      # expect(page).to have_text "You choose Rock"
    end

    scenario 'Should display scissors button' do
      click_button("Scissors")
      # expect(page).to have_text "You choose Rock"
    end

  end
