require 'spec_helper'
require 'rack/test'

describe 'index page' do
  include Rack::Test::Methods

  scenario 'player is able to choose weapon' do
    sign_in_pvc
    click_button 'Rock'
    expect(page).to have_content 'Rufus choses rock.'
    expect(page).to have_button 'Generate computer choice'
  end
end
