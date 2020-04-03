feature 'test wiring' do
  scenario 'test wiring is correctly set up' do
    visit '/'
    expect(page).to have_content('Server is working as expected')
  end
end
