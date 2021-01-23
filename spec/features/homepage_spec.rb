
feature 'Homepage' do
  scenario 'Can run app and display Homepage' do
    visit('/')
    expect(page).to have_content("Hello there")
  end
end
