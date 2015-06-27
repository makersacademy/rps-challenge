require 'spec_helper'

feature 'Landing page' do

  scenario 'Entering name' do
    visit '/'
    fill_in('name', with: 'James')
  end


end