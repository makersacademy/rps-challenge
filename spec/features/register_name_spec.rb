feature 'Register player name' do
  scenario 'submiting name' do
    register_name

    expect(page).to have_content 'Choose your weapon Marius:'
  end
end
