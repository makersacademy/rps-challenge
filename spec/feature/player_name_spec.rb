feature 'Input/Store player name' do
  scenario 'returns player name' do
    sign_in
    expect(page).to have_content 'John!'
  end
end
