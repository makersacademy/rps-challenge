feature 'checking homepage welcome' do 
  scenario 'can run app and check homepage welcome message' do
    visit '/'
    expect(page).to have_content 'Welcome player!'
  end
end

