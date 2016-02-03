feature 'HP' do
  scenario "can display opponent's HP" do
    sign_in_and_play
    expect(page).to have_content "Zeratuul - 40HP"
  end
end
