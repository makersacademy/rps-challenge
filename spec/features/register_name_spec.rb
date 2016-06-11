require 'spec_helper'
require_relative 'web_helpers'

feature 'registering names' do
  scenario 'displays name after registering' do
    sign_in_and_play
    expect(page).to have_content('Marlon')
  end
end
