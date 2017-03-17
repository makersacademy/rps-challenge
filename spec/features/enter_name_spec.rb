require 'spec_helper'

feature 'test run' do
  it 'runs the test' do
    expect(true).to eq true
  end
end

feature 'registering name' do
  scenario 'register and see my name' do
    visit '/'
    fill_in 'name', with: 'Katie'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Katie'
  end
end
