require 'rails_helper'
RSpec.feature "タスク管理機能", type: :feature do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:user_second)
    FactoryBot.create(:recipe)
    FactoryBot.create(:recipe_second)
    FactoryBot.create(:shop)
    FactoryBot.create(:shop_second)
    visit root_path
        fill_in 'メールアドレス', with: 'user1@user.com'
        fill_in 'パスワード', with: 'password'
        click_button 'ログイン'
        expect(page).to have_content 'ログインしました。'
    end

  scenario "レシピ一覧のテスト" do
    visit root_path
    expect(page).to have_content 'ポークカレー'
    expect(page).to have_content 'チキンカレー'
  end

  scenario "レシピ詳細のテスト" do
    visit root_path
    click_link 'レシピの詳細', match: :first
    expect(page).to have_content 'Bカレー'
  end



  scenario "レシピ作成のテスト" do
    visit new_recipe_path
    select 'Aカレー',from: 'recipe[shop_id]'
    fill_in 'recipe[name]', with: 'テストカレー'
    fill_in 'recipe[content]', with: 'この店の人気メニューをコピーしました。'
    select '他',from: 'recipe[curry_type]'
    fill_in 'recipe[materials_attributes][0][name]', with: 'テストスパイス'
    fill_in 'recipe[materials_attributes][0][amount]', with: '一式'
    fill_in 'recipe[materials_attributes][1][name]', with: 'テストスパイス'
    fill_in 'recipe[materials_attributes][1][amount]', with: '一式'
    fill_in 'recipe[materials_attributes][2][name]', with: 'テストスパイス'
    fill_in 'recipe[materials_attributes][2][amount]', with: '一式'

    fill_in 'recipe[materials_attributes][0][name]', with: 'テストスパイス'
    fill_in 'recipe[materials_attributes][0][amount]', with: '一式'
    fill_in 'recipe[materials_attributes][1][name]', with: 'テストスパイス'
    fill_in 'recipe[materials_attributes][1][amount]', with: '一式'
    fill_in 'recipe[materials_attributes][2][name]', with: 'テストスパイス'
    fill_in 'recipe[materials_attributes][2][amount]', with: '一式'

    fill_in 'recipe[flows_attributes][0][content]', with: 'テスト'
    fill_in 'recipe[flows_attributes][1][content]', with: 'テスト'
    fill_in 'recipe[flows_attributes][2][content]', with: 'テスト'

    click_button '登録する'
    expect(page).to have_content 'テストカレー'
  end

  scenario "レシピ削除のテスト" do
    FactoryBot.create(:recipe_third)
    visit root_path
    click_link 'レシピの詳細', match: :first
    click_link '削除'
    expect(page).to have_content 'ポークカレー'
  end

end
