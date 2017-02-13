require 'spec_helper'

feature 'home page' do
  scenario 'Expect welcome message' do
    visit('/')
    expect(page).to have_content 'Enter your name to play!'
  end

end
