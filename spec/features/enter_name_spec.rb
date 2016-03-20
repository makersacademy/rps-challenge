require 'spec_helper'

feature 'homepage' do
  scenario 'require user to enter name' do
    visit '/'
    expect(page).to have_content 'Hello RPS!'
  end
end
