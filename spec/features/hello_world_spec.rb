feature 'Testing setup' do
  scenario 'Hello World is there' do
    visit '/'
    expect(page).to have_content 'Hello World'
  end
end