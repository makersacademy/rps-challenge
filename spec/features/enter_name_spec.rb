require 'spec_helper'

feature 'Enter name' do
  scenario 'Allows player to enter name and see it on page' do
    fill_in_name_and_start
    expect(page).to have_content("Mario")
  end
end
