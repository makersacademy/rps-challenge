feature 'computer can lose' do
  before do
    solo_enter_name_and_play
    allow(Kernel).to receive(:rand).and_return(2)
  end
  
  scenario 'computer chooses scissors, user chooses rock' do
    click_button("Rock")
    expect(page).to have_content('Hermione Wins!')
  end
end
