class ETL
  def self.transform(old)
    old.map do |score, letters| 
      letters.map{ |l| [l.downcase, score] }
    end
    .flatten(1)
    .to_h
  end
end