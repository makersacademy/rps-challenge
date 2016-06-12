feature 'FEATURE:' do

  scenario 'starts game with two players' do
    sign_in_and_play_p2
    expect(page).to have_content 'Choose your hand!'
  end

  scenario 'starts game against computer' do
    sign_in_and_play_comp
    expect(page).to have_content 'Choose your hand!'
  end

end
