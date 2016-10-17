require 'spec_helper'

RSpec.feature "Show outcome", type: :feature do
  it "Displays the winner on the page" do
    enter_name
    click_button('Show winner')
  end
end
