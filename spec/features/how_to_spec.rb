feature 'How_to page' do
  scenario 'the user can visit the how_to page from index' do
    visit('/')
    click_button 'play'
    expect(page).to have_content 'How to Play'
  end
end
