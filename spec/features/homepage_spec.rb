feature 'Testing infrastructure' do
  scenario 'Home page contains text' do
    visit '/'
    expect(page).to have_content('Please register your name below')
  end
end
