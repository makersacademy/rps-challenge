feature '/' do 
  scenario 'User can access index' do
    visit('/')
    expect(page.status_code).to be(200)
  end
end