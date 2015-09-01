/**
*
* @author Roboiu Simona
*/

package convertXmlProBToCppUnit;

public class Const {
	
	public static final String templateComment = "template_comment";
	public static final String testClassName = "TestDataChannelFunctionality";
	
	public static final String pathTCG = ".\\..\\..\\DB_test_case_generation\\";
	public static final String outputUnitTest = pathTCG + "tc-gen\\" + testClassName + ".cpp";
	public static final String XMLTestFile = pathTCG + "prob\\" + "test_cbc.xml";
	
}
