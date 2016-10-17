require 'spec_helper'
require 'features/web_helpers'

feature 'enter name' do
    scenario 'on welcome screen' do
      sign_in_and_play
      expect(page).to have_content "Welcome David. Let's play."
    end
end
