class CreateGoodsTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :goods_types do |t|
      t.string     :name
      t.references :category, index: true, foreign_key: true

      t.timestamps null:false
    end
  end
end
