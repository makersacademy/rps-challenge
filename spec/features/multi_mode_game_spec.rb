require 'spec_helper'

feature 'Two player mode game' do

  scenario 'User can select two player mode' do
    visit '/registration'
    fill_in 'name', :with => 'Giuseppe'
    click_button "Submit"
    click_link "Two Player Mode"
    expect(current_path).to eq('/multi-mode')
  end

end

def in_browser(name)
  old_session           = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end