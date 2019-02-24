require './app.rb'
require 'spec_helper'
feature 'Testing index page' do
  scenario 'can run app and check page content' do
    visit ('/')
    expect(page).to have_content('Hello there!')
  end
end 
