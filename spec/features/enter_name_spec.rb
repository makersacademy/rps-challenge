feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player, with: 'Ryu'
    click_button 'Play!'
    expect(page).to have_content 'Ryu'
  end
end
