require 'spec_helper'

feature 'Feature Test - start single player game' do
  scenario 'submitting names' do
    submit_name
    expect(page).to have_content "Get ready to play Rosie!"
  end
end
feature 'Feature Test - choosing weapon' do
  scenario 'choosing weapon as rock' do
    submit_name
    player_choose_rock
    expect(page).to have_content "Rosie chose rock!"
  end
end
feature 'Feature Test - win game against computer' do
  scenario 'player choose rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    submit_name
    player_choose_rock
    expect(page).to have_content "Rosie won! Computer: scissors vs. Rosie: rock"
  end
end
