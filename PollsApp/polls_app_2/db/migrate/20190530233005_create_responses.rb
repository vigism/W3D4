class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :user_response_id, null:false
      t.integer :answer_id, null:false
      t.timestamps
    end
      add_index :responses, :user_response_id
      add_index :responses, :answer_id
  end
end
