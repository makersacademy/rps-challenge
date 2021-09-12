feature 'Testing' do
  scenario 'can run app and check page content' do
    visit ('/')
    expect(page).to have_content 'Testing 1 2 3'
  end
end