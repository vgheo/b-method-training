/**
*
* @author Roboiu Simona
*/

package convertXmlProBToCppUnit;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class WriteOutput {

	static int indexTest;
	
	private BufferedReader commentFile = null;
	private BufferedWriter outputFile = null;
	
	public WriteOutput(ArrayList<TestCase> testCases) throws IOException {
		indexTest = 1;
		writeInFile(testCases);
	}
	
	/*
	 * Compute result: comments and code test
	 * Write it in file .cpp
	 */
	public void writeInFile(ArrayList<TestCase> testCases) throws IOException {
	
		// opening files to read/write
		openFiles();
		
		//first comment
		String line = commentFile.readLine();
		outputFile.append(line + Const.testClassName + ".cpp\r\n");
		
		while((line = commentFile.readLine()) != null)
			outputFile.append(line + "\r\n");

		outputFile.append("\r\n");
		outputFile.append("class " + Const.testClassName + ";\r\n\r\n");
		outputFile.append("CPPUNIT_TEST_SUITE_REGISTRATION(" + Const.testClassName + ");\r\n\r\n");
		outputFile.append("class " + Const.testClassName + ": public CppUnit::TestFixture {\r\n\r\n");
		outputFile.append("\tCPPUNIT_TEST_SUITE(" + Const.testClassName + ");\r\n\r\n");
		
		// TODO: add: CPPUNIT_TEST(test_TCIM_UT_<number>);
		// number belongs 1..testCases.size()
		
		outputFile.append("\tCPPUNIT_TEST_SUITE_END();\r\n\r\n");
		
		//TODO: add tearDown() and setUp() functions;
		
		// Compute result for each test case
		for (int i = 0; i < testCases.size(); i++) {
			TestCase itTest = testCases.get(i);
			ArrayList<StructValue> initialisation = 
					itTest.getInitialisations();
			HashMap<String, ArrayList<StructValue>> steps = 
					itTest.getOperations();
			
			for (int j = 0; j < initialisation.size();j++) {
				;
			}
			for (Map.Entry<String, ArrayList<StructValue>> entry : steps.entrySet()) {
				String key = entry.getKey();
				ArrayList<StructValue> values = entry.getValue();
			}
			
			/* Template comment for each test:
			 * \test TCIM_UT_<number>
			 * \b Prescenario
			 * \pre
			 * \b Execution
			 * \b Expected \b Result:
			 * \b Origin
			 * \b SRS:
			 * \b Referenced documents:
			 */
			outputFile.append("\r\n/**\r\n");
			outputFile.append(" * \\test TCIM_UT_" + indexTest + "\r\n");
			outputFile.append(" * Tests the function: " + itTest.getStepNameTest() + "\r\n * \r\n");
			outputFile.append(" * \\b Prescenario\r\n * \r\n");
			// TODO: add prescenario
			outputFile.append(" * \\pre\r\n * The following states are set:\r\n");
			// TODO: add pre after modelB is finished
			outputFile.append(" * \r\n");
			
			outputFile.append(" * \\b Execution\r\n");
			//TODO: add execution
			outputFile.append(" * \r\n");
			outputFile.append(" * \\b Expected \\b Result:\r\n");
			//TODO: add expected/result
			outputFile.append(" * \r\n");
			
			outputFile.append(" * \\b Origin\r\n * \\b SRS:\r\n * \r\n");
			// TODO: add SRS
			outputFile.append(" * \\b Referenced documents:\r\n * \r\n");
			outputFile.append(" */\r\n");
			
			/*
			 * Template code test:
			 	// Prescenario
				// Preconditions
				// Execution
				// Results
				// cleanup
			 */
			outputFile.append("void test_TCIM_UT_"+ indexTest++ +"()\r\n{\r\n");
			//TODO: add code test
			outputFile.append("\t//Prescenario\r\n");
			outputFile.append("\t//Preconditions\r\n");
			outputFile.append("\t//Executions\r\n");
			outputFile.append("\t//Results\r\n");
			outputFile.append("\t//Cleanup\r\n");
			outputFile.append("}\r\n");
			
		}
		
		outputFile.append("};\r\n");
		
		//closing files
		closeFiles();
	}
	
	/*
	 * Opening template for comment and output file
	 */
	public void openFiles() {
		try {
			commentFile = new BufferedReader (
				    new FileReader(Const.templateComment));
			outputFile = new BufferedWriter(
					new FileWriter(Const.outputUnitTest));
		} catch (FileNotFoundException ex) {
			System.out.println("Error file not found for read");
			ex.printStackTrace();
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	}
	
	/*
	 * Closing files
	 */
	public void closeFiles() {
		
		try {
			commentFile.close();
			outputFile.close();
		} catch (IOException e1) {
			System.out.println("Error IO closing file");
			e1.printStackTrace();
		}
	}
}
