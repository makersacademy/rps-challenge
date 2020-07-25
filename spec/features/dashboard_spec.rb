require_relative '../spec_helper'
require_relative './web_helpers'

feature '#dashboard' do

  scenario '#dashboard view displays name' do
    homepage_sign_in
    expect(page).to have_content 'Welcome to the RPS Dashboard'
  end

end
