package apiautomation.getRequest;

import com.intuit.karate.junit5.Karate;

public class getRequestRunner {

    @Karate.Test
    public Karate runTest() {
        return Karate.run("getRequest.feature", "validateJSONArray", "validateXMLResponse", "variables", "validationUsingFile", "jsonPathExpression").relativeTo(getClass());
        //return Karate.run("validateXMLResponse").relativeTo(getClass());
    }

    @Karate.Test
    public Karate runTestUsingClassPath() {
        return Karate.run("classpath:apiautomation/getRequest/responseMatcher.feature");
    }
}