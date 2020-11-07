FactoryBot.define do
  factory :card do
    title { 'タイトル' }
    memo { '説明' }
    start_date { '2020/01/01' }
    end_date { '2020/01/01' }
  end
end
