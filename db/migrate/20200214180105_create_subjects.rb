class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects, id: false do |t|
      t.string :id
      t.string :term
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
