
feature 'registering name' do
  scenario 'registers a name' do
    visit '/'
    fill_in :name, with: 'Mike'
    click_button 'Submit'
    expect(page).to have_content 'Mike'
  end
end
