feature 'play page links' do

  scenario 'has the Rock' do
    give_name_heraldo
    expect(page).to have_link(:href => "/combat", :alt => "Rock")
  end

  scenario 'has Paper' do
    give_name_heraldo
    expect(page).to have_link(:href => "/combat", :alt => "Paper")
  end

  scenario 'has Scissors' do
    give_name_heraldo
    expect(page).to have_link(:href => "/combat", :alt => "Scissors")
  end

end
