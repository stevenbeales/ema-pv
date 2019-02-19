class CreateClinicalTrials < ActiveRecord::Migration[5.2]
  def change
    create_table :clinical_trials do |t|
      t.string :code

      t.timestamps
    end
  end
end
