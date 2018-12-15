feature 'Viewing choices' do
  scenario 'seeing rock' do
    sign_in_and_play
    expect(page).to have_content('Rock')
  end

  scenario 'seeing paper' do
    sign_in_and_play
    expect(page).to have_content('Paper')
  end

  scenario 'seeing scissors' do
    sign_in_and_play
    expect(page).to have_content('Scissors')
  end
end
