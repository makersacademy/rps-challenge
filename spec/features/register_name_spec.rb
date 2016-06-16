require 'spec_helper'
require_relative 'web_helpers'

feature 'registering names' do
  scenario 'displays name after registering' do
    sign_in_and_play
    expect(page).to have_content('Marlon')
  end

  scenario 'has option of 2 player' do
    multi_play_sign_in
    expect(page).to have_content('Marlon vs. Fred')
    end
end
