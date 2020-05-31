class CreateLiles < ActiveRecord::Migration[5.2]
  def change
    create_table :liles do |t|
      t.string :review_id
      t.integer :score_point

      t.timestamps
    end
  end
end
