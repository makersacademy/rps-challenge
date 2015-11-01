require 'spec_helper'

feature 'computer chooses at random' do
  scenario 'computer makes choice' do
    srand(1)
    make_choice('rock')
    expect(page).to have_content('Computer chose paper!')
  end
end
