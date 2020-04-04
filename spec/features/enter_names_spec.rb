feature 'enter names' do
  scenario 'marketeer must enter names' do
    sign_in_and_play
    expect(page).to have_content 'Mac'
  end
end