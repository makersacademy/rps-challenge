require 'spec_helper'

feature 'Register name' do
  scenario 'Player can register and see name before playing' do
    sign_in
    expect(page).to have_content "Hello Batman!"
  end
end
