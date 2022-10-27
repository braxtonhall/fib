object Fib {
  private val golden = (1 + Math.sqrt(5)) / 2;

  def next(i:Long) : Long = {
    Math.round(i.toDouble * golden)
  }
}