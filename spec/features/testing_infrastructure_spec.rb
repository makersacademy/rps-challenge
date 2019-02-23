feature 'test home page is working' do

  scenario 'home page shows text' do
    visit('/')
    expect(page).to have_content 'Hello, I am working'
  end

end
