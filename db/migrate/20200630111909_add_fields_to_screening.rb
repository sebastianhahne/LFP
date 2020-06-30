class AddFieldsToScreening < ActiveRecord::Migration[6.0]
  def change
    add_column :screenings, :Fantasie, :integer
    add_column :screenings, :Realitaetsbezug, :integer
    add_column :screenings, :Selbstbild, :integer
    add_column :screenings, :Gefuehle, :integer
    add_column :screenings, :Schwingungsfaehigkeit, :integer
    add_column :screenings, :Aggressivitaet, :integer
    add_column :screenings, :Frustrationstoleranz, :integer
    add_column :screenings, :Stimmung, :integer
    add_column :screenings, :Motivation, :integer
    add_column :screenings, :Durchsetzung, :integer
    add_column :screenings, :Kontaktaufnahme, :integer
    add_column :screenings, :Regeln, :integer
    add_column :screenings, :Teamarbeit, :integer
    add_column :screenings, :Kritik, :integer
    add_column :screenings, :Aufmerksamkeit, :integer
    add_column :screenings, :Ausdauer, :integer
    add_column :screenings, :Konzentration, :integer
    add_column :screenings, :Merkfaehigkeit, :integer
    add_column :screenings, :sensWahrnehmun, :integer
    add_column :screenings, :Selbststaendigkeit, :integer
    add_column :screenings, :Flexibilitaet, :integer
    add_column :screenings, :Antrieb, :integer
    add_column :screenings, :Entscheidungsfaehigkeit, :integer
    add_column :screenings, :Feinmotorik, :integer
    add_column :screenings, :Selbstkontrolle, :integer
    add_column :screenings, :Problemloesen, :integer
    add_column :screenings, :Sorgfalt, :integer
  end
end
