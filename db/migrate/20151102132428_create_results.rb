class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :result
      t.string :user
    end
  end
end
