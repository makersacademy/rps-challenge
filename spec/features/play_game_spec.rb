require 'spec_helper'

RSpec.feature 'test game' do
  scenario 'we want the player to be given options Rock, Paper and scissors' do
    sign_in
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario 'if player chooses rock they should be taken to page /rock and given response' do
    sign_in
    click_button('Rock')
    expect(page).to have_content('Tom has chosen Rock!')
    expect(page).to have_content('Player 2 has chosen ')
  end

  scenario 'if player chooses paper they should be taken to page /paper and given response' do
    sign_in
    click_button('Paper')
    expect(page).to have_content('Tom has chosen Paper!')
    expect(page).to have_content('Player 2 has chosen ')
  end

  scenario 'if player chooses Scissors they should be taken to page /scissors and given response' do
    sign_in
    click_button('Scissors')
    expect(page).to have_content('Tom has chosen Scissors!')
    expect(page).to have_content('Player 2 has chosen ')
  end

  scenario 'if player chooses Lizard they should be taken to page /lizard and given response' do
    sign_in
    click_button('Lizard')
    expect(page).to have_content('Tom has chosen Lizard!')
    expect(page).to have_content('Player 2 has chosen ')
  end

  scenario 'if player chooses Spock they should be taken to page /spock and given response' do
    sign_in
    click_button('Spock')
    expect(page).to have_content('Tom has chosen Spock!')
    expect(page).to have_content('Player 2 has chosen ')
  end

end
