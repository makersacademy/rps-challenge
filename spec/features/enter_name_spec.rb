feature 'enter names' do
  scenario 'can enter name' do
    visit('/')
    fill_in(:name, with: 'Pat')
    click_button('Submit')
    expect(page).to have_content('Pat')
  end
end
