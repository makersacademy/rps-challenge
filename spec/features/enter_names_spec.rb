

feature 'Enter name' do
  scenario 'submitting name' do
    visit ('/')
    fill_in :name, with: 'James'
    click_button 'Submit'
    expect(page).to have_content 'James'
  end
end
