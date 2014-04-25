class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.integer :keyword_id
      t.integer :state_id

      t.timestamps
    end
  end
end
