require 'spec_helper'

feature RPS do
  scenario 'Returns the home page for RPS' do
    visit '/'
    expect(page).to have_content("Hello this is Sparta!")
  end

  scenario 'Home page provides log in field' do
    visit '/'
    expect(page).to find_field('Name').value
  end
end
