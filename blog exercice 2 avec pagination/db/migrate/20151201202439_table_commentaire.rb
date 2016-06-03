class TableCommentaire < ActiveRecord::Migration
  def change
	create_table :comments
	add_column :comments, :auteur, :string
	add_column :comments, :content, :string
	add_column :comments, :article_id, :integer
	add_index :comments, :article_id
  end
end
