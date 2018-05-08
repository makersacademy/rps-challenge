feature 'Testing the random cpu move' do
  scenario 'page shows rock has been selected' do
    sign_in_and_play
    select 'Rock', from: 'move'
    allow(Kernel).to receive(:rand).and_return(0)
    visit('/result')
    expect(page).to have_content("The computer's move was Rock")
  end
  scenario 'page shows paper has been selected' do
    sign_in_and_play
    select 'Rock', from: 'move'
    allow(Kernel).to receive(:rand).and_return(1)
    visit('/result')
    expect(page).to have_content("The computer's move was Paper")
  end
  scenario 'page shows Scissors has been selected' do
    sign_in_and_play
    select 'Rock', from: 'move'
    allow(Kernel).to receive(:rand).and_return(2)
    visit('/result')
    expect(page).to have_content("The computer's move was Scissors")
  end
end
