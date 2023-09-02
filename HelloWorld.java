import print.*;

public class HelloWorld {

	public static void main(String[] args) {
		IHelloWorldPrinter printer = new ConsoleHelloWorldPrinter();
		printer.print("Hello World");
	}
}