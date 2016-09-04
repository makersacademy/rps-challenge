require 'spec_helper'

feature 'Feature Test - start single player game' do
  scenario 'submitting names' do
    submit_name
    expect(page).to have_content "Get ready to play Rosie!"
  end
end
feature 'Feature Test - choosing Weapon' do
  scenario 'choosing weapon as rock' do
    submit_name
    fill_in :weapon, with: "rock"
    click_button "Submit"
    expect(page).to have_content "Rosie chose rock!"
  end
end
