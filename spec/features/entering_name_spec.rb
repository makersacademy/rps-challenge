feature 'Testing enter names' do
  scenario 'submitting the names' do
    visit('/')
    fill_in :name, with: 'Bob'
    click_button 'Play!'
    # save_and_open_page
    expect(page).to have_content 'Bob'
  end
end