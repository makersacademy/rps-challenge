require 'spec_helper'



feature 'Starting a new game' do
  scenario 'I  enter my name, click Play & am taken to new game' do
    visit "/"
    fill_in "name_field", with: "Bob"
    click_on "submit_btn"
    expect(page).to have_content "Choose Rock, Paper or Scissors, Bob!"
  end
end



