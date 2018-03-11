feature 'Testing infrastructure' do

  scenario 'Running the app to see if it displays the page content' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end

end
