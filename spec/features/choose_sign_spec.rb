feature 'Choose sign' do
  before(:each) { sign_in_and_play }
  before(:each) { srand(42) }
  let(:name) { 'Oleg' }

  scenario 'Choose rock - human' do
    click_button('Rock')
    expect(page).to have_content "#{name}: Rock"
  end

  scenario 'Choose paper - human' do
    click_button('Paper')
    expect(page).to have_content "#{name}: Paper"
  end

  scenario 'Choose scissors - human' do
    click_button('Scissors')
    expect(page).to have_content "#{name}: Scissors"
  end

  scenario 'Choose sign - computer' do
    click_button('Rock')
    expect(page).to have_content "Gott der Vater: Scissors"
  end
end
