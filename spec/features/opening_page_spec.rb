require 'spec_helper'

feature 'Opening page' do
  scenario 'shows opening page' do
    visit '/'
    expect(page).to have_content('Rock, Paper, Scissors Game')
    expect(page).to have_content('Please sign in to play')
  end
end
