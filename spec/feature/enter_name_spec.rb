feature 'Enter names' do
  scenario 'submitting names' do
    sign_up_players
    expect(page).to have_content 'Austin'
  end
end
