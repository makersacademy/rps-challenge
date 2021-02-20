feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name, with: 'James'
    click_button 'Go'
    expect(page).to have_content 'James'
  end
end