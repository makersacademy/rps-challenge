require 'spec_helper'

  feature RPS do

    before(:each) do
      visit ("/")
      fill_in("Player", :with => "Courtney")
      click_button("Submit")
    end

    scenario 'Should display Rock button' do
      click_button("Rock")
    end

  end
