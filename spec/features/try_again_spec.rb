
feature 'try again' do

  scenario 'there is a retry button' do
    sign_in_and_play
    expect(page).to have_button('try again?')
    end

  scenario 'goes back to /play' do
    sign_in_and_play
    click_button('try again?')
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
    #save_and_open_page
  end
end
