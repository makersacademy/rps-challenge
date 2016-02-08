require 'spec_helper.rb'

feature 'submitting a name' do
  scenario 'clicking submit button' do
    sign_up
    expect(page).to have_content "AAA"
  end
end