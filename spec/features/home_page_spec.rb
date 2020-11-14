feature 'home page' do
  scenario 'it welcomes you to rps' do
    visit '/'
    expect(page).to have_content 'Welcome to rock, paper, scissors!'
  end
end
