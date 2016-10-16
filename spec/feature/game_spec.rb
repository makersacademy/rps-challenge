require 'spec_helper'

feature 'name input', :type => feature do
  scenario "user creates a name" do
    sign_in_and_play
    expect(page).to have_text('Akram')
  end
end

feature 'allows you to pick options', :type => feature do
  scenario "user creates a name" do
    sign_in_and_play
    expect(page).to have_text('Pick one of the following options')
  end
end
