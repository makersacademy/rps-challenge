
feature "Enter name" do
  scenario 'submitting names' do
    visit('/')
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    fill_in :player, with: 'Slava'
    click_button 'Submit'
    expect(page).to have_content 'Slava vs. Computer'
  end
end
