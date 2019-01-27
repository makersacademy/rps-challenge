require_relative '../../app.rb'
require 'spec_helper.rb'

feature 'homepage ' do
  scenario " Register and see my name" do
    sign_in_and_play
    expect(page).to have_content("jake")
  end
end