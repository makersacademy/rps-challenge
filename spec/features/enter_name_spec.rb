require 'spec_helper'

feature 'Enter name' do
  scenario 'submitting name' do
    enter_name
    expect(page).to have_content 'Sam'
  end
end
