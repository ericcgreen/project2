class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.string :username
      t.string :overall_rating
      t.string :safety_rating
      t.string :comment
      t.string :recommendations
      t.string :user_photo
      t.timestamps
      t.references :city, index: true, foreign_key: true
    end
  end
end
