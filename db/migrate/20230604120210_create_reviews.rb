
class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string :comment
      t.belongs_to :user, foreign_key: true
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end

