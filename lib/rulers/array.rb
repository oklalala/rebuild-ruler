#rulers/lib/rulers/array.rb
class Array
  def sum(start = 0)
    inject(start,&:+)
  end

  def multi(start = 1)
    inject(start,&:*)
  end
end