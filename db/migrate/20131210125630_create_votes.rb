class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :username
      t.references :movie, index: true

      t.timestamps
    end
  end
end
