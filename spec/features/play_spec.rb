require 'spec_helper'

feature 'Play can choose rock, paper, or scissors' do
  it 'should have the option rock' do
    fill_in_name_and_start
    expect(page).to have_button('Rock')
  end
  it 'should have the option rock' do
    fill_in_name_and_start
    expect(page).to have_button('Paper')
  end
  it 'should have the option rock' do
    fill_in_name_and_start
    expect(page).to have_button('Scissor')
  end
end
