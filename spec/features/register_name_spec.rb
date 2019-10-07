require 'spec_helper'

feature 'Register name' do
  scenario 'New player sees name displayed' do
    register_and_play
    expect(page).to have_content 'Alex'
  end
end
