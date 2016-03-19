# in spec/features/rps_game_start_spec.rb
require 'spec_helper'

feature 'RPS game starts' do
  scenario 'allows user to enter their name' do
    crush_it
    expect(page).to have_content('Welcome Shane')
  end
  scenario 'allows user to specify points to win' do
    crush_it
    fill_in('points', :with => 20)
    click_button('Set Points')
    expect(page).to have_content('You win when you earn 20 points.')
  end
  scenario 'allows player to initiate a round and see result' do
    crush_it
    fill_in('points', :with => 20)
    click_button('Set Points')
    click_button('Rock')
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    expect(page).to have_content('You win!')
  end
end
