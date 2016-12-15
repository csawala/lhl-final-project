class CreateGoodsTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :goods_types do |t|

      t.timestamps
    end
  end
end
