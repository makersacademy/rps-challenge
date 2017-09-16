feature '#initialize' do
  scenario 'checks link is working' do
    visit('/')
    # fill_in :player_name, with: 'Joe'
    # click_button 'submit'
    expect(page).to have_content "Which brave soul wants to challenge me to an RPS battle?????"
  end
end
