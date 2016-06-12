

feature '/' do
  scenario 'visits page' do
    visit('/')
    expect(page).to have_text('Enter names')
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in('name', with: 'Ross')
    click_button('Submit')
    expect(page).to have_content('Ross')
  end
end

feature 'Returns rock paper or scissors' do
  scenario 'push play button' do
    visit('/')
    fill_in('name', with: 'Ross')
    click_button('Submit')
    click_button('Play')
    allow(Kernel).to receive(:rand).and_return(0)
    expect(page).to have_content(['Scissors', 'Rock', 'Paper'][0])
  end

end
