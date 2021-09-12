feature 'enter name' do
  scenario 'submitting name' do
    visit ('/')
    fill_in :name, with: 'Ifrah'
    click_button 'Enter Name'
    expect(page).to have_content 'Play Ifrah'
  end
end
