require './rps_app'
require 'spec_helper'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/infra')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
