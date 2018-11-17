feature 'Enter name' do
  scenario 'submitting their name' do
    visit('/')
    fill_in :name, with: 'Lorna'
    click_button 'Submit'
    expect(page).to have_content 'Lorna'
  end
end
