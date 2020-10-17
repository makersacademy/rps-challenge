feature 'computer can win' do
  before do
    enter_name_and_play
    allow(Kernel).to receive(:rand).and_return(2)
  end
  
  scenario 'computer chooses paper, user chooses rock' do
    click_button("Paper")
    expect(page).to have_content('The Computer Wins')
  end
end
