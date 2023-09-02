import com.diogonunes.jcolor.*;

public class ConsoleHelloWorldPrinter implements IHelloWorldPrinter {

	@Override
	public void print(String str) {
		System.out.println(Ansi.colorize(str, Attribute.YELLOW_TEXT(), Attribute.MAGENTA_BACK()));
	}
}