require 'spec_helper'


feature 'Enter names' do
  scenario 'submitting names' do
    add_name_and_submit
    expect(page).to have_content "Welcome, Bob!"
  end
end
