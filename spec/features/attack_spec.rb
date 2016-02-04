feature 'Attack' do

  before do
    sign_in_and_play
    click_button 'Nova - attack'
  end

  scenario 'can attack' do
    expect(page).to have_content "Nova attacks Zeratuul!"
  end

  scenario 'reduce HP' do
    click_button 'Next turn'
    expect(page).to have_content "Zeratuul - 30HP"
  end

end
