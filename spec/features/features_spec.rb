require 'spec_helper'


feature "testing forms" do
  it "has a form on the homepage" do
    visit '/'
    expect(page).to have_field("player_1")
  end
  it "records name of player 1" do
    visit('/')
    fill_in('player_1', :with => 'Guy')
    click_button 'Play!'
    save_and_open_page
    expect(page).to have_content 'Guy'
  end
end
