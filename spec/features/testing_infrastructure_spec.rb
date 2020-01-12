require 'spec_helper'

describe "the homepage", type: :feature do
  
  it 'shows the content' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end

end