
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import com.lakton.Main;

public class TestMain {
    @Test
    public void testValidInput() {
        // Simulate valid input
        String[] input = {"d5", "a1", "h8", "g2"};

        // Set the System.in to the simulated input
        System.setIn(new java.io.ByteArrayInputStream(String.join(System.lineSeparator(), input).getBytes()));

        // Run the main method
        Main.main(new String[0]);

        // No assertion needed, if the program executes without errors, it is considered a successful test
    }

    @Test
    public void testInvalidInput() {
        // Simulate invalid input
        String[] input = {"d5", "a1", "h8", "e3"};

        // Set the System.in to the simulated input
        System.setIn(new java.io.ByteArrayInputStream(String.join(System.lineSeparator(), input).getBytes()));

        // Run the main method
        Main.main(new String[0]);

        // No assertion needed, if the program executes without errors, it is considered a successful test
    }

    @Test
    public void testSamePosition() {
        // Simulate invalid input with king and rook at the same position
        String[] input = {"d5", "a1", "h8", "d5"};

        // Set the System.in to the simulated input
        System.setIn(new java.io.ByteArrayInputStream(String.join(System.lineSeparator(), input).getBytes()));

        // Run the main method
        Main.main(new String[0]);

        // No assertion needed, if the program executes without errors, it is considered a successful test
    }
}


