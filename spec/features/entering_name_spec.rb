feature 'Enter name' do
  scenario 'submitting name' do
    start_playing
    expect(page).to have_content "Foobar"
  end
end
