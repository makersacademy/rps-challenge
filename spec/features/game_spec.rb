feature 'game menu' do

  scenario 'has a button with a Rock option' do
    sign_in_and_play
    expect(page).to have_content("Rock Paper Scissors")
  end

end
