feature 'computer chooses RPS' do

  xscenario 'The computer makes a random choice' do
    sign_in_and_play
    click_button('Scissors')
    allow(Kernel).to receive(:rand).and_return(1)
    click_button('Outcome')
    expect(page).to have_content('The computer has chosen rock!')
  end
end
