
feature 'name input' do
  scenario 'solo player submits name' do
    sign_in_and_play
    expect(page).to have_content('Sally')
  end
end
