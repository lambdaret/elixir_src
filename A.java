import java.math.BigInteger;
import java.util.stream.Stream;

public class A {
    public static void main(String[] args) {
        // BigInteger i2 = new BigInteger("1000000000000000000000000000000000000000000000001");
        BigInteger i2 = new BigInteger("10001");

        BigInteger result = Stream
                .iterate(BigInteger.ONE, i -> i.add(BigInteger.ONE))
                .takeWhile(i -> i.compareTo(i2) < 0)
                .reduce(BigInteger.ZERO, BigInteger::add);

        System.out.println("Sum: " + result);
    }
}