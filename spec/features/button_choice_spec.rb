require 'spec_helper'

feature 'option choice' do
  scenario 'user chooses which option to take' do
    sign_in_and_play
    expect(page).to have_text('Rock')
  end
end
