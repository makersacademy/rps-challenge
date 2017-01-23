require 'spec_helper'

feature 'Register name' do
  scenario 'marketeer enters their name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Margo'
  end
end
