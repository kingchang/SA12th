package com.hsdc.epro.control;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hsdc.epro.intf.control.GenerateRFPUco;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:META-INF/spring/app-context.xml" })
public class GenerateRFPUcoImplTest {
	@Autowired
	private GenerateRFPUco service;
	@Test
	public void testGenerateSuggestedSupplier() {
		String input = "[{\"materialNo\":\"0100010\",\"prMonth\":\"1\",\"quantity\":\"1\",\"expectedAmount\":\"100000\"}]";
		List<String> expectedResult = new ArrayList<String>();
		expectedResult.add("A11022");
		expectedResult.add("Q10010");
		expectedResult.add("S01001");
		expectedResult.add("S01101");
		expectedResult.add("Z20011");
		String realResult = service.generateSuggestedSupplier(input);
		System.out.println(realResult);
		for (String er : expectedResult)
			assertTrue(realResult.contains(er));
	}

}
