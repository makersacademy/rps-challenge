require 'spec_helper'

RSpec.feature "choosing weapon", :type => :feature do 
  scenario "displays chosen weapon" do 
    weapons_chosen
    expect(page).to have_content "Spock has chosen rock"
  end
end