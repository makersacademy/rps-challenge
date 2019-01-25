feature 'Set up game' do
  scenario 'form accepts one name' do
    load_and_play
    expect(page).to have_content 'Your turn, Lily'
  end

  scenario 'loads page with rps options' do
    load_and_play
    expect(page).to have_content 'rock'
  end
end
