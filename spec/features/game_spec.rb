require 'spec_helper.rb'
require_relative './helpers.rb'

feature 'In RPS Game' do
  scenario 'User is presented with RPS choices' do
    sign_in_helper
    expect(page).to have_content('Please choose your attack:')
  end
  scenario 'User chooses link' do
    sign_in_helper
    click_link('Rock')
    expect(page).to have_content('You Chose Rock')
  end
end
