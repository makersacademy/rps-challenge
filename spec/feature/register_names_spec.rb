require 'spec_helper'


feature 'registering name' do
  scenario 'register name and see on screen' do
    sign_in_and_play
    expect(page).to have_content 'Gus'
  end
end
