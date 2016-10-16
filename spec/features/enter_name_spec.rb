require 'spec_helper'

feature 'enter names' do
    scenario 'Submitting names' do
      sign_in_and_play
      expect(page).to have_content 'Brian vs. Tom'
    end
end
