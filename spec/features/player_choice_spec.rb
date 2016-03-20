feature 'Player attack:' do
  scenario 'Player can make a choice of weapon' do
    sign_in_and_choose
    expect(page).to have_content('Adil chose rock!')
  end
end

feature 'Computer attack:' do
  scenario 'Computer makes choice' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_choose
    expect(page).to have_content('Computer chose paper!')
  end
end
