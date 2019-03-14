class CreateUnitEnum < ActiveRecord::Migration[5.2]
  def up
    execute <<-CREATE_ENUM
      CREATE TYPE unit
      AS ENUM ('mg', 'g', 'kg', 'l', 'EL', 'TL', 'Msp', 'Bund', 'Packung');
    CREATE_ENUM
  end

  def down
    execute <<-REMOVE_ENUM
      DROP TYPE unit;
    REMOVE_ENUM
  end
end
