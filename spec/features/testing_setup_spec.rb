feature 'Testing Setup' do
  scenario 'Can run app and check page has content' do
    visit ('/')
    expect(page).to have_content "Hello RPS!!"
  end
end
