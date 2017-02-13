class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.belongs_to :project, index: true
      t.belongs_to :employees, index: true
      t.timestamps
    end
  end
end
