feature 'computer can tie with user' do
  before do
    enter_name_and_play
    allow(Kernel).to receive(:rand).and_return(0)
  end
  
  scenario 'computer and user choose rock' do
    click_button("Rock")
    expect(page).to have_content('draw')
  end
end
