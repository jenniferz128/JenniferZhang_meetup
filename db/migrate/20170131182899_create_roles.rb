class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
    	t.string :title
    	t.belongs_to :user, index: true
    	t.belongs_to :group, index: true

      t.timestamps
    end
  end
end
