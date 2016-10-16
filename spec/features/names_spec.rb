require 'spec_helper'

feature 'enter_name' do
  scenario 'fill in registration form' do
    visit "/"
    fill_in "name", :with => "Anna"
    click_button "Let's go!"
    expect(page).to have_text("Anna's up!")
  end
end
