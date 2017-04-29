feature 'Entering name' do
  scenario 'submitting names' do
    visit '/'
    fill_in 'Player1', with: 'CaptainCode'
    click_on 'Submit'
    expect(page).to have_content('CaptainCode vs RosiePoSie')
  end
end
