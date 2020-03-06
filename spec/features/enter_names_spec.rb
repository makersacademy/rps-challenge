feature 'enter name' do
  scenario 'submitting name' do
    visit ('/')
    fill_in :name, with: 'Daria'
    click_button 'Submit'
    expect(page).to have_content 'Daria vs. Computer'
  end
end