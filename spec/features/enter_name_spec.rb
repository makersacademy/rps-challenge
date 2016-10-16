require "spec_helper"

RSpec.feature 'Enter name', :type => :feature do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Rocky!'
  end
end
