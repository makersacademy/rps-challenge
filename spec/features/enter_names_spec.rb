require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player, with: "Bob"
    click_button "Submit"
    expect(page).to have_content "Welcome Bob!"
  end
end
