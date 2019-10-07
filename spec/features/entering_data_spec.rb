feature 'Enter data' do

  scenario 'submitting info' do
    setup
    expect(page).to have_content "Dove vs. Computer"
  end
end
