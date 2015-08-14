class AddCategoryidToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :category_id, :string
  end
end
