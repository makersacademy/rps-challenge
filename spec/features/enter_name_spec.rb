require 'spec_helper'

feature 'enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content('Ben is playing Rock Paper Scissors!')
  end
end
