class AddCommentToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :comment, :text
  end
end
