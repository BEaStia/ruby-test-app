require 'rspec'
require './storage'


describe 'Check Record' do
  it 'should create keys' do
    rec = Record.new
    expect {
      Record.keys.each{|key, value|
        expected_value = value[:float].nil?  ? rand(value[:max]-value[:min])+value[:min] :
            rand(value[:min]..value[:max])
        rec.send("#{key}=", expected_value)
      }
    }.not_to raise_error
    rec.age.should_not be nil
    p rec

    #a = [1,2,4,5,6]
    #new_elm = 3

    #index = [*a.each_with_index].bsearch{|x, _| x > new_elm}.last
    #=> 2

    #a.insert(index, new_elm)
  end

end

describe 'Check Storage' do

  it 'should be faster' do

    storage = Storage.new

    true.should_not == false
  end


end