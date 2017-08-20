
feature 'Name shown on page' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content("Shoto")
  end
end
