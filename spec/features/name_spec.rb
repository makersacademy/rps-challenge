
feature 'Enter name' do
  scenario 'submitting name' do
    visit ('/')
    fill_in :player_name, with: 'Luni'
    click_button 'Submit'
    expect(page).to have_content 'Luni vs. Computer'
  end
end



