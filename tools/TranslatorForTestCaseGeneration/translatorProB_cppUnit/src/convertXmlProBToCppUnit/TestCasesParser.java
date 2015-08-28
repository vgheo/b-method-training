/**
*
* @author Roboiu Simona
*/

package convertXmlProBToCppUnit;

import java.io.IOException;
import java.util.ArrayList;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class TestCasesParser extends DefaultHandler {

	boolean testCase_tag = false;
	boolean initialisation_tag = false;
	boolean value_tag = false;
	boolean step_tag = false;
	boolean modified_tag = false;
	
	private TestCase testTmp;
	private String type, name, value, stepNameTmp;
	private ArrayList<StructValue> paramStepTmp;
	private ArrayList<TestCase> testCases;

	public TestCasesParser(String fileXML) {
		testCases = new ArrayList<TestCase>();
		parseDocument(fileXML);
	}

	private void parseDocument(String fileXML) {

		SAXParserFactory spf = SAXParserFactory.newInstance();
		try {

			//get a new instance of parser
			SAXParser sp = spf.newSAXParser();

			//parse the file and also register this class for call backs
			sp.parse(fileXML, this);

		} catch (SAXException se) {
			System.out.println("SAXException : xml not well formed");
		} catch (ParserConfigurationException pce) {
			System.out.println("ParserConfig error");
		} catch (IOException ie) {
			ie.printStackTrace();
			System.out.println("SAXException : xml not found");
		}
	}

	public ArrayList<TestCase> getTestCases() {
		return testCases;
	}
	
	@Override
	public void startElement(String uri, String localName, String qName,
		Attributes attributes) throws SAXException {

		if(qName.equalsIgnoreCase("test_case")) {
			
			testTmp = new TestCase();
			testCase_tag = true;
		} else if(qName.equalsIgnoreCase("initialisation")) {
			
			initialisation_tag = true;
		} else if(qName.equalsIgnoreCase("value")) {
			
			if(step_tag == true)
				type = "value";
			else
				type = attributes.getValue("type");
			
			name = attributes.getValue("name");
			value_tag = true;
		} else if(qName.equalsIgnoreCase("step")) {
			
			paramStepTmp = new ArrayList<StructValue>();
			stepNameTmp = attributes.getValue("name");
			step_tag = true;
		} else if(qName.equalsIgnoreCase("modified")) {
			
			type = "modified";
			name = attributes.getValue("name");
			modified_tag = true;
		}
	}

	@Override
	public void endElement(String uri, String localName, String qName) throws SAXException {
		
		if(qName.equalsIgnoreCase("test_case")) {
			testTmp.setStepName(stepNameTmp);
	        testCases.add(testTmp);
	        testCase_tag = false;
		} else if (qName.equalsIgnoreCase("initialisation")) {
			initialisation_tag = false;
		} else if (qName.equalsIgnoreCase("value")) {
			value_tag = false;
		} else if (qName.equalsIgnoreCase("step")) {
			// add delimiter between values of steps with same name
			paramStepTmp.add(new StructValue(null,null,null));
			testTmp.addOperation(stepNameTmp, paramStepTmp);
			step_tag = false;
		} else if (qName.equalsIgnoreCase("modified")) {
			modified_tag = false;
		}
	}

	@Override
	public void characters(char ch[], int start, int length) throws SAXException {

		if(value_tag) {
			value = new String(ch, start, length);
			if (step_tag == false)
				testTmp.addInitialisation(new StructValue(type, name, value));
			else
				paramStepTmp.add(new StructValue(type, name, value));
		} else if(modified_tag) {
			value = new String(ch, start, length);
			paramStepTmp.add(new StructValue(type, name, value));
		}
	}
}
