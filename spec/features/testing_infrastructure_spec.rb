require 'capybara/rspec'
require_relative '../../lib/app'

feature RPS do
  scenario 'testing infrastructure' do
    visit '/infrastructure'
    expect(page).to have_content 'Infrastructure working!'
  end
end
