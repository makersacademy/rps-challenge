feature 'winner is displayed' do
  scenario 'winner name is displayed' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(2)
    click_button "Rock!"
    expect(page).to have_content 'Nayr is the WINNER!'
  end
end
