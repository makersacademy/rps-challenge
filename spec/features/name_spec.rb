feature 'name' do
  scenario 'displays name' do
    visit '/'
    fill_in :name1, with: 'Jack'
    click_button 'Submit'

    expect(page).to have_content 'Jack'
  end
end
