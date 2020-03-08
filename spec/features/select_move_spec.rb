feature 'selecting player move options' do

  scenario 'displays rock move' do
    sign_in_and_play
    expect(page.find_button("rock"))
  end

  scenario 'displays paper move' do
    sign_in_and_play
    expect(page.find_button("paper"))
  end

  scenario 'displays scissors move' do
    sign_in_and_play
    expect(page.find_button("scissors"))
  end

end
