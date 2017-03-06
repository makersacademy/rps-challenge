require 'spec_helper'
require_relative 'web_helper'

feature 'selection' do
  scenario 'player selects rock' do
    sign_in
    click_button "Rock"
    expect(page).to have_content 'John chose Rock'
  end

  scenario 'player selects paper' do
    sign_in
    click_button "Paper"
    expect(page).to have_content 'John chose Paper'
  end

  scenario 'player selects scissors' do
    sign_in
    click_button "Scissors"
    expect(page).to have_content "John chose Scissors"
  end
end
