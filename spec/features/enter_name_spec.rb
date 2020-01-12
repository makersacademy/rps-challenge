feature 'Enter Names' do
  scenario 'User enters name before game starts' do
    sign_in_and_play
    expect(page).to have_content 'name1'
  end
end
