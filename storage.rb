class MonkeyPatchedClass
  def self.load_keys hash
    hash.each{|key|
      attr_accessor(key[0])
    }
  end
end

class Record < MonkeyPatchedClass
  class << self
    def keys
      {:sex=>{:min=>0, :max=>1}, :age=>{:min=>0, :max=>100}, :growth=>{:min=>0, :max=>300},
       :index=>{:min=>0, :max=>1000000}, :sum=>{:min=>0.0, :max=>1000000.0, :float=>true}}
    end
  end

  load_keys self.keys
end

class Storage
  def add_record(key)

  end

  def find params

  end

  private
  def search sex, age, growth, index, sum

  end
end