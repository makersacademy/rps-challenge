require './spec/spec_helper'

feature 'Visits root of site' do
  scenario 'returns content' do
    expect(page).to have_content 'Hello World'
  end
end