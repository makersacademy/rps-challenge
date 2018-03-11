feature 'User name input' do
  scenario 'Can accept user names as inputs' do
    sign_in_and_play
    expect(page).to have_content 'Rob vs. Chiaki'
  end
end    
