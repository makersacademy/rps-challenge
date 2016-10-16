feature 'Names form' do
  scenario 'Players can enter their names' do
    sign_in
    expect(page).to have_text ("Marketeer")
  end
end
