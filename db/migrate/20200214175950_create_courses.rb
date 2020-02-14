class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses, id: false do |t|
      t.string :id
      t.string :term
      t.string :code
      t.string :name
      t.string :continuity_id
      t.string :description
      t.float :credits
      t.boolean :independent_study

      t.timestamps
    end
  end
end
