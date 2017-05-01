feature 'signing in' do
  scenario 'players can enter name before game' do
    sign_in_and_play
    expect(page).to have_content 'Sulaiman vs'
  end
end
