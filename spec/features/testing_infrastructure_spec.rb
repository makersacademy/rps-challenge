feature 'Testing Infrastructure' do
  scenario 'Can run app and check content' do
    visit '/'
    expect(page).to have_content("All working!")
  end
end
