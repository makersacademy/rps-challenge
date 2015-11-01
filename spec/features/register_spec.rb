feature 'Register name' do

  scenario 'I can register my name to play' do
    visit '/'
    fill_in :player, with: "Chuka"
    click_button 'Register'
    expect(page).to have_content('Welcome Chuka!')
  end
end
