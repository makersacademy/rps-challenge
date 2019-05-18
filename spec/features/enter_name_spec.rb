feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :name, with: 'Francesca'
    click_button 'Submit'
    expect(page).to have_content 'Francesca'
  end
end
