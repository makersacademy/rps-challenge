feature 'Entering names' do
  scenario 'submitting one name' do
    sign_in_sp_play
    expect(page).to have_content 'Jess vs. Robot'
  end

  # scenario 'submitting two names' do
  #   sign_in_mp_play
  #   expect(page).to have_content 'Jess vs. James'
  # end
end
