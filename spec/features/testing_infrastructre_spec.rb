require 'spec_helper'

feature "Testing local host" do
  scenario "Can run app and check page content" do
    visit('/')
    expect(page).to have_content "Yoooo lets get Rock, Paper, Scissors going!"
  end
end
