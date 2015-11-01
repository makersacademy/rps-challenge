require 'spec_helper'

feature "choose move" do
  scenario "pick move and receive confirmation" do
    make_choice('rock')
    expect(page).to have_content('You chose rock!')
  end
end
