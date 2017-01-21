
feature 'Computer chooses an item' do
  scenario 'Computer chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Computer has chosen Rock'
  end
end
