package apiautomation;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Runner;
import com.intuit.karate.Runner.Builder;

public class ParallelRunner {
	
	@Test
	public void executeKarateTests() {
		Runner.parallel(getClass(), 5);
		Builder aRunner = new Builder();
		aRunner.path("classpath:apiautomation");
		aRunner.parallel(5);
		Runner.parallel(aRunner);
	}
}
