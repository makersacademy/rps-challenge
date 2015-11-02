require 'spec_helper'
require 'player'
require 'game'

feature 'selecting a item' do
  scenario 'player selects rock' do
    visit('/')
    click_button('Battle')
    expect(page).to have_content 'Welcome'
  end

  scenario 'paper' do
    visit('/')
    click_button('Battle')
    expect(page).to have_content 'Welcome'
  end

  scenario 'scissors' do
    visit('/')
    click_button('Battle')
    expect(page).to have_content 'Welcome'
  end
end
