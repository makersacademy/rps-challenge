require 'spec_helper'
require_relative 'web_helpers'

feature 'The RPS game begins' do
scenario 'The user selects Rock and the computer selects Paper' do
  sign_in
  click_link('Rock')
  expect(page).to have_content('Results:')
end
end
