feature 'showing a welcome message' do
  scenario 'should show a welcome message when you arrive' do
    visit '/'
    expect(page).to have_content('hello world')
  end
end
