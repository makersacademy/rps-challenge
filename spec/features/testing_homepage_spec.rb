feature 'Homepage test' do
  scenario 'Run app, open homepage and display test text' do
    visit('/')
    expect(page).to have_content 'Testing!!!'
  end
end 