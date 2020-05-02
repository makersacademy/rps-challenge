feature 'Register player name' do
  scenario 'submiting name' do
    visit '/'
    fill_in :name, with: 'Marius'
    find_button(value: "Register").click

    expect(page).to have_content 'Choose your weapon Marius:'
  end
end
