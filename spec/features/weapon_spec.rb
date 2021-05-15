# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RPS

feature "player's weapons" do
  it 'player presented with weapon choices' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  it 'stores player weapon selection' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You selected ROCK')
  end
end

feature "game's weapons" do
  
  it 'displays the generated weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("The Game selected SCISSORS")
  end
end
