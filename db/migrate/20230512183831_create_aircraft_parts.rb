class CreateAircraftParts < ActiveRecord::Migration[7.0]
  def change
    create_table :aircraft_parts do |t|
      t.string :part_name
      t.string :material_composition
      t.integer :age
      t.string :condition
      t.string :location
      t.string :manufacturer
      t.string :aircraft_model
      t.string :potential_use_cases
      t.integer :new_parts_carbon
      t.integer :recycled_parts_carbon
      t.integer :new_water_usage
      t.integer :recycled_water_usage
      t.integer :new_landfil
      t.integer :recycled_landfill
      t.integer :new_energry
      t.integer :recycled_energy
      t.float :recycling_rate
      t.float :new_toxity
      t.float :recycled_toxity
      t.float :remanufacturing_potential
      t.float :life_cycle_assessment
      t.float :renewable_material_content
      t.integer :carbon_footprint_saved
      t.integer :water_usage_saved
      t.integer :landfill_waste_save
      t.integer :energy_consumption_saved
      t.float :toxicity_score_difference
      t.float :remanufacturing_potentia
			t.float :life_ycle_assessment_score
      t.timestamps
    end
  end
end
