feature 'Names' do
  scenario 'can have names entered for player 1 and 2' do
    sign_in_and_play
    expect(page).to have_content "Nova vs. Zeratuul"
  end
end
