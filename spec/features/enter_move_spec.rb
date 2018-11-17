feature 'Enter move' do
  scenario 'submitting their move' do
    visit('/')
    fill_in :move, with: 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'Rock'
  end
end
