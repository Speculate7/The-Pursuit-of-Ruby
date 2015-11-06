class CreateSomeModels < ActiveRecord::Migration
  def change
    create_table :some_models do |t|
      t.string :butts

      t.timestamps
    end
  end
end
