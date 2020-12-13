require 'spec_helper'

feature "user choices" do
  before(:each) do
    visit '/'
    fill_in('name', with:'Luna')
    click_button('Enter')
  end

  scenario "user can choose from rock, paper, scissors" do
    click_link('rock')
    allow(self).to receive(:generate_random).and_return(:paper)
    expect(page).to have_content("You lost!")
  end
end