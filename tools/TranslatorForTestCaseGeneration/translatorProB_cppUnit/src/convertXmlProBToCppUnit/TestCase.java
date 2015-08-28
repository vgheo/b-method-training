/**
*
* @author Roboiu Simona
*/

package convertXmlProBToCppUnit;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

public class TestCase {

	private String stepNameTest;
	private ArrayList<StructValue> initialisations;
	private LinkedHashMap<String, ArrayList<StructValue>> operations;
	
	public TestCase() {
		stepNameTest = new String();
		initialisations = new ArrayList<>();
		operations = new LinkedHashMap<>();
	}
	
	public String getStepNameTest() {
		return stepNameTest;
	}
	
	public ArrayList<StructValue> getInitialisations() {
		return initialisations;
	}
	
	public HashMap<String, ArrayList<StructValue>> getOperations() {
		return operations;
	}
	
	public void setStepName(String stepNameTest) {
		this.stepNameTest = stepNameTest;
	}
	
	public void addInitialisation(StructValue init) {
		initialisations.add(init);
	}
	
	public void addOperation(String key, ArrayList<StructValue> value) {
		if (operations.containsKey(key)) {
			ArrayList<StructValue> tmp = operations.get(key);
			tmp.addAll(value);
			operations.put(key, tmp);
		} else {
			operations.put(key, value);
		}
	}
}
