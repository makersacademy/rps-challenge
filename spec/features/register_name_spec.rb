feature 'Register player name' do
  scenario 'submiting name' do
    visit '/'
    fill_in :name, with: 'Marius'
    find("#register").click

    expect(page).to have_content 'Choose your weapon Marius:'
  end
end
