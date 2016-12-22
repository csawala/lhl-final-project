class RemoveColumnsFromGoodsTypes < ActiveRecord::Migration[5.0]
  def up
    remove_column :goods_types, :offers
    remove_column :goods_types, :needs
    remove_column :goods_types, :category_id
  end
end
