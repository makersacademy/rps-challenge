feature 'Index page loads' do
  scenario 'with greeting' do
    visit '/'
    expect(page).to have_content "Hello there!"
  end
end