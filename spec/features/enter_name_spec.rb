require 'spec_helper'

feature 'enter name' do

  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_text ('Pop')
  end

end
