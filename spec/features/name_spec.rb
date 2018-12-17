feature 'Players can enter names' do
  scenario 'and see them when battles starts' do
    sign_in_and_submit_name
    expect(page).to have_content 'Samson'
  end
end
