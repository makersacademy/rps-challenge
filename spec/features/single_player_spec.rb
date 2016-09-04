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
    expect(page).to have_content "Rosie: rock"
  end
end
feature 'Feature Test - win/lose game against computer' do
  scenario 'player choose rock & win' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    submit_name
    player_choose_rock
    expect(page).to have_content "Rosie, you won!"
  end
  scenario 'player choose rock & lose' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    submit_name
    player_choose_rock
    expect(page).to have_content "The result was a loss."
  end
  scenario 'player choose rock & draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    submit_name
    player_choose_rock
    expect(page).to have_content "The result was a draw."
  end
end
