require 'spec_helper'

feature 'Register name' do
  scenario 'remembers your name' do
    visit('/')
    fill_in :name, with: 'Frances'
    click_button "Let's play"
    expect(page).to have_content 'Okay Frances, please choose your move!'
  end

end
