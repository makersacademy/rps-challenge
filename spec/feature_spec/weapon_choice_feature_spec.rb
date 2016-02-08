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

  scenario 'The computer chooses paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button("paper")
    expect(page).to have_content('Computer chose paper')
  end

  scenario 'The computer chooses rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button("paper")
    expect(page).to have_content('Computer chose rock')
  end

  scenario 'The computer chooses scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button("paper")
    expect(page).to have_content('Computer chose scissors')
  end
end
