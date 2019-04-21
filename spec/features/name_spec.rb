require 'spec_helper'

feature 'enter name, see name' do
  scenario 'submit name, store and redirect to page containing name' do
    add_name_and_play
    expect(page).to have_content('Player 1 vs Computer')
  end
end
