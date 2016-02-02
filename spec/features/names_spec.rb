feature 'Names' do
  scenario 'can be entered for player 1 and 2' do
    visit('/')
    fill_in :player_1, with: 'Nova'
    fill_in :player_2, with: 'Zeratuul'
    click_button 'Submit'
    expect(page).to have_content "Nova vs. Zeratuul"
  end
end
