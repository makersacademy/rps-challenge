require 'spec_helper'

feature 'Enter name' do

  scenario 'entering player name' do
    enter_name
    expect(page).to have_content 'Choose wisely, young Abigail...'
  end

end
