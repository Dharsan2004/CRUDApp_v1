class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|

      t.string :BookName
      t.text :Author
      t.timestamps
    end
  end
end
