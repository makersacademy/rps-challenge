feature 'Testing homepage' do
  scenario 'Can run app and check page content' do
    visit ('/')
    expect(page).to have_content 'Testing, testing, testing'
  end
end
