feature 'Enter Name' do
  scenario 'Enter Dave and submit, see Dave' do
    dave_sign_in
    expect(page).to have_content 'Dave'
  end

  scenario 'Enter Jim and submit, see Jim' do
    jim_sign_in
    expect(page).to have_content 'Jim'
  end
end
