feature 'I want there to be a form I can fill in and see my name up in lights after' do
  scenario 'fill in form and submit' do
    visit('/')
    fill_in :name, with: 'Tom'
    click_button 'submit'
    expect(page).to have_content 'Tom'
  end
end