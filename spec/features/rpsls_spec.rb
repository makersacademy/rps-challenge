feature 'FEATURE:' do

  scenario 'starts game' do
    sign_in_and_play
    expect(page).to have_content 'Choose your hand!'
  end

end
