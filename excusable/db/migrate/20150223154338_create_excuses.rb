class CreateExcuses < ActiveRecord::Migration
  def change
    create_table :excuses do |t|
      t.string :title
      t.string :content
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
