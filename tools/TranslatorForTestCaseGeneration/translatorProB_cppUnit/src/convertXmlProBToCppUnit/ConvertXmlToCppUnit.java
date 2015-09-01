/**
 * @author Roboiu Simona
 */

package convertXmlProBToCppUnit;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


public class ConvertXmlToCppUnit {
	
	static ArrayList<TestCase> testCases;
	
	public static void main(String[] args) {
		
		/*
		 * Parsing xml and get a list of test cases
		 * TODO: parse (B) values from initialisation
		 */
		TestCasesParser readXml = new TestCasesParser(Const.XMLTestFile);
		testCases = readXml.getTestCases();
		
		// Test in console: print parser
		printXmlParsed();
		
		/*
		* Writing the result (coomment and test code)
		*/
		try {
			WriteOutput writeResult = new WriteOutput(testCases);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	// for test: print xml parsed
	static void printXmlParsed(){
		for (int i = 0; i < testCases.size(); i++) {
			System.out.println("Initialisation:");
			ArrayList<StructValue> init = testCases.get(i).getInitialisations();
			for (int j = 0; j < init.size();j++) {
				System.out.print("type:" + init.get(j).type + "; ");
				System.out.print("name:" + init.get(j).name + "; ");
				System.out.println("value:" + init.get(j).value);
			}
			System.out.println("\nSteps:  --- " + testCases.get(i).getStepNameTest());
			HashMap<String, ArrayList<StructValue>> steps = 
				testCases.get(i).getOperations();
			for (Map.Entry<String, ArrayList<StructValue>> entry : steps.entrySet()) {
				String key = entry.getKey();
				ArrayList<StructValue> values = entry.getValue();
				System.out.println("\nStep name: " + key);
				for (int j = 0; j < values.size() - 1; j++) {
					if (values.get(j).type == null && values.get(j).name == null) {
						System.out.println("\nStep name: " + key);
						continue;
					}
					System.out.print("type:" + values.get(j).type + "; ");
					System.out.print("name:" + values.get(j).name + "; ");
					System.out.println("value:" + values.get(j).value);
				}
				System.out.println();
			}
		}
	}
}
