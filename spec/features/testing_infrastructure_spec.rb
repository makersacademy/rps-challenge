feature '/' do 
  scenario 'loads home page' do 
    visit '/'
    expect(page).to have_content 'Welcome! Choose game mode'
  end
end
