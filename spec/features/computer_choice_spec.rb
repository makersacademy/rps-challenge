require 'spec_helper'

feature 'computer chooses at random' do
  scenario 'computer makes choice' do
    make_choice
    srand(23)
    expect(page).to have_content('Computer chose rock!')
  end
end
