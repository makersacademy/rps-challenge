feature 'Display player name' do
  scenario 'Players name is printed on /play' do
    sign_in_and_submit_name
    expect(page).to have_content 'Pick an action Jimmy:'
  end
end
