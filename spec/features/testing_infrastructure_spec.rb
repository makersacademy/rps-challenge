feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content "Good day to you, Marketeer - lookin' good!"
  end

  feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name, with: "Greg"
    click_button "Submit"
    expect(page).to have_content("Oh hello, Greg!")
  end
end
end
