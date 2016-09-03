require 'spec_helper.rb'
require_relative './helpers.rb'

feature 'In RPS Game' do
  scenario 'User chooses rock, computer paper' do
    sign_in_helper
    click_link('Rock')
    expect(page).to have_content('Game Log:')
  end
end
