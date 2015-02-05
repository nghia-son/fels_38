class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.references :user, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
