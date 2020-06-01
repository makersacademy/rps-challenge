require 'spec_helper'

feature 'user signs in' do
  scenario 'submitting names' do
    sign_in
    expect(page).to have_content 'Welcome to the game Judy'
  end
end
