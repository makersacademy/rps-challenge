require 'spec_helper'

feature "user choices" do
  before(:each) do
    visit '/'
    fill_in('name', with:'Luna')
    click_button('Submit')
  end

  scenario "user can choose from rock, paper, scissors" do
    click_link('rock')
    expect(page).to have_content("rock")
  end
end