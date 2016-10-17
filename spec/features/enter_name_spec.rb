require 'spec_helper'

feature 'enter name' do
    scenario 'on welcome screen' do
      sign_in_and_play
      expect(page).to have_content "Welome David. Let's play."
    end
end
