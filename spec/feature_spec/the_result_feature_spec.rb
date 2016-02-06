require 'spec_helper'

feature 'The player can choose a weapon' do

  before do
    sign_up
  end

  scenario 'The player chooses rock' do
    click_button("rock")
    expect(page).to have_content('Soulless Marketeer chose rock')
  end

  scenario 'The player chooses scissors' do
    click_button("scissors")
    expect(page).to have_content('Soulless Marketeer chose scissors')
  end

  scenario 'The player chooses paper' do
    click_button("paper")
    expect(page).to have_content('Soulless Marketeer chose paper')
  end

end
