require './app.rb'
require 'spec_helper'

RSpec.feature "Finish", :type => :feature do

  scenario "Displaying the winner" do
    sign_in_and_play
    click_button("SCISSORS")
    expect(page).to have_content
  end

end
