
feature 'Enter name' do
  scenario 'should enter name' do
    visit('/')
    fill_in :player, with: 'Debora'
    click_button 'Submit'
    expect(page).to have_content "Debora, let's play!"
  end
end
