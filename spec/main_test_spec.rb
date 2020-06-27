feature 'smiley face form' do
  scenario 'There is a smiley face on the page' do
      visit('/')
    expect(page).to have_content ":)"
  end
end