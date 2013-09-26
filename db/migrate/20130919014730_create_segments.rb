class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.string :ipa_symbol, limit: 55, null:false, unique:true 
      t.string :sampa_symbol, limit: 55, default:nil
      t.string :cmudict_symbol, limit: 55, default:nil
      t.string :name, limit: 55, default:nil
      t.string :description, limit: 255, default:nil
      t.string :ipa_place, limit: 55, default:nil
      t.string :ipa_type, limit: 55, default:nil
      t.string :ipa_manner, limit: 55, default:nil
      t.boolean :sylabic, default:nil
      t.boolean :consonantal, default:nil
      t.boolean :aproximant, default:nil
      t.boolean :sonorant, default:nil
      t.boolean :voice, default:nil
      t.boolean :spread_glotis, default:nil
      t.boolean :constricted_glotis, default:nil
      t.boolean :continuant, default:nil
      t.boolean :nasal, default:nil
      t.boolean :strident, default:nil
      t.boolean :lateral, default:nil
      t.boolean :delayed_release, default:nil
      t.boolean :labial, default:nil
      t.boolean :round, default:nil
      t.boolean :coronal, default:nil
      t.boolean :anterior, default:nil
      t.boolean :distributed, default:nil
      t.boolean :dorsal, default:nil
      t.boolean :high, default:nil
      t.boolean :low, default:nil
      t.boolean :back, default:nil
      t.boolean :tense, default:nil
      t.boolean :radical, default:nil
      t.boolean :laryngeal, default:nil

      t.timestamps
    end
  end
end
