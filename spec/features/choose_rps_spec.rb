feature 'Selecting RP or S' do
  scenario 'see the options available' do
    sign_in_and_go
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scisscors'
  end

  scenario 'choose RPS and get confirmation' do
    sign_in_and_go
    #save_and_open_page
    page.choose 'rock'
    click_button 'Confirm'
    expect(page).to have_content 'James'
    expect(page).to have_content 'Rock'
    expect(page).not_to have_content 'Scisscors'
  end

  scenario 'have to make a selection' do
    # sign_in_and_go
    # save_and_open_page
    # click_button 'Fight'
    # expect(page).not_to have content #from next page
  end


end 