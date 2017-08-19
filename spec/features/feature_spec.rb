require 'spec_helper'
require_relative '../../rps.rb'
# RSpec.feature "Home page", type: :feature do
feature Rps do

  scenario "it says hello Player" do
    visit('/')
    expect(page).to have_text("Hello Player!")
    # enter_name
  end
end
