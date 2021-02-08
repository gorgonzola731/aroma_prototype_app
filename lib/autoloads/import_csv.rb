class ImportCsv
  def self.import(path)
     CSV.foreach(path, headers: true) do |row|
       Aroma.create!(
         aroma_name: row["aroma_name"],
         explain: row["explain"],
         img: row["img"]
       )
     end
  end
end