class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.timestamps
      t.references :user, null:false, foreign_key: true
      t.references :prototype, null:false,foreign_key: true
      t.text :text
    end
  end
end
