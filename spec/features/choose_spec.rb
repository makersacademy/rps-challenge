# frozen_string_literal: true

require 'spec_helper'

feature 'Choose Weapon' do
  before(:each) do
    two_player_sign_in
  end

  scenario 'players chose rock' do
    click_button('rock')
    click_button('rock')
    expect(page).to have_content('Rick chose rock.')
    expect(page).to have_content('Morty chose rock.')
  end

  scenario 'players chose scissors' do
    click_button('scissors')
    click_button('scissors')
    expect(page).to have_content('Rick chose scissors.')
    expect(page).to have_content('Morty chose scissors.')
  end

  scenario 'players chose paper' do
    click_button('paper')
    click_button('paper')
    expect(page).to have_content('Rick chose paper.')
    expect(page).to have_content('Morty chose paper.')
  end
end
