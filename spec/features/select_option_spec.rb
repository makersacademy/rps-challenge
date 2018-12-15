feature 'Viewing choices' do
  scenario 'seeing rock' do
    sign_in_and_play
    expect(page).to have_content('Rock')
  end
end
