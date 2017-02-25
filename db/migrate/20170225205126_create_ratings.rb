class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.string :overall_rating
      t.string :safety_rating
      t.string :comment
      t.string :recommendations
      t.references :city, index: true, foreign_key: true
    end
  end
end
