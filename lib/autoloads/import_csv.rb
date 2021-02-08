class ImportCsv
  def self.import(path)
     CSV.foreach(path, headers: true) do |row|
       User.create!(
         aroma_name: row["aroma_name"],
         explain: row["explain"],
         img: row["img"]
       )
     end
  end
end