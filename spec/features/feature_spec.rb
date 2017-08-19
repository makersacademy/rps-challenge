require 'spec_helper'
require_relative '../../rps.rb'
# RSpec.feature "Home page", type: :feature do
feature Rps do

  scenario "it says hello Player" do
    enter_name
    expect(page).to have_text("Hello, Player!")
  end
end
