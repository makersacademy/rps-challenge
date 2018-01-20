feature 'Register name' do
  scenario 'submitting name' do
    register_and_play
    expect(page).to have_content 'Anjana'
  end
end
