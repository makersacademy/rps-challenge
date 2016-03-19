require 'spec_helper'

feature 'Play can choose rock, paper, or scissors' do
  it 'should have the option rock' do
    fill_in_name_and_start
    expect(page).to have_button('Rock')
  end
  it 'should have the option Paper' do
    fill_in_name_and_start
    expect(page).to have_button('Paper')
  end
  it 'should have the option Scissors' do
    fill_in_name_and_start
    expect(page).to have_button('Scissors')
  end
end

feature 'When choice is rock' do
  it 'and computer is paper, expect to lose' do
    allow(Kernel).to receive(:rand) { 1 }
    fill_in_name_and_start
    click_button('Rock')
    expect(page).to have_content("Computer wins!")
  end
  it 'and computer is scissors, expect to win' do
    allow(Kernel).to receive(:rand) { 2 }
    fill_in_name_and_start
    click_button('Rock')
    expect(page).to have_content("Mario wins!")
  end
end
