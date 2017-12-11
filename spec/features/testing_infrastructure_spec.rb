feature 'Homepage' do
  scenario 'exists and has content' do
    visit '/'
    expect(page).to have_content "Please enter your name"
  end
end
