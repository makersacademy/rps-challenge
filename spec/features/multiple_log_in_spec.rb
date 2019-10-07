feature 'Multiple Log ins' do
  scenario "Visit homepage and sign in twice with different users, see both listed as online" do
    visit '/'
    fill_in 'name', with: 'Andy'
    click_button 'Submit'
    visit '/'
    fill_in 'name', with: 'Ross'
    click_button 'Submit'
    expect(page).to have_content 'List of players currently online: AndyRoss'
  end
end
