feature "get to play" do
  scenario "page from where the user can start playing" do
    # visit '/'
    # fill_in :credentials, with:'Marcello'
    # click_button 'Submit'
    sign_in
    expect(page).to have_content 'Welcome Marcello! Choose your weapon.'
  end
end