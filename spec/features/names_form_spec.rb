require './app.rb'
require 'spec_helper'

RSpec.feature "Homepage", :type => :feature do
  scenario "User enters name" do
    sign_in_and_play
    expect(page).to have_content("Louisa")
  end
end
