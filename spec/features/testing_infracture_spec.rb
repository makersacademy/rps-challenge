feature 'homepage' do # describe
  scenario 'return homepage' do # context
    visit('/')
    expect(page).to have_content 'Enter your name to start playing'
    # page - current page
  end
end
