class CreateEaterists < ActiveRecord::Migration[5.2]
  def change
    create_table :eaterists do |t|
      t.references :eatery, foreign_key: true
      t.string :delicious_score #美味しさ
      t.string :mood_score #ムードスコア
      t.string :cont_performance_score #コストパフォーマンススコア
      t.string :service_score #サービススコア
      t.string :imagination_score #イマジネーションスコア
      t.string :original_score #旅行、デート、お酒、素材、独創性、の質等、様々なブログジャンルを確立出来る
      t.string :revisit #再訪したいレベルか？
      t.string :average_price #平均金額
      t.timestamps
    end
  end
end
