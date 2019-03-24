feature 'Testing user name entry' do

  scenario 'Can run app and input user name which is then displayed' do
    visit('/')
    fill_in :name, with: 'James'
    click_button 'Play!'
    expect(page).to have_content 'James'
  end

end
