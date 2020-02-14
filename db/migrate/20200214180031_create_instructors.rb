class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors, id: false do |t|
      t.string :id
      t.string :first
      t.string :middle
      t.string :last
      t.string :email

      t.timestamps
    end
  end
end
