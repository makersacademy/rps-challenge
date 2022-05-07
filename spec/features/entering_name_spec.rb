
feature "Enter name" do
  scenario 'submitting names' do
    visit('/')
    expect(page).to have_button 'Submit'
    fill_in :player, with: 'Slava'
    click_button 'Submit'
  end
end
