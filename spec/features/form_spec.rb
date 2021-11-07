require_relative 'web_helpers'

feature 'form' do
  scenario 'completion of form leads to new page that displays name' do
    register_name 
    expect(page).to have_content 'Bob vs Computer'
  end
end
