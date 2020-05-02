feature 'Register player name' do
  scenario 'submit name' do
    visit '/'
    fill_in :name, with: 'Marius'
    # find("#register").click
    click_button 'Register'

    expect(page).to have_content 'Choose your weapon Marius:'
  end
end
