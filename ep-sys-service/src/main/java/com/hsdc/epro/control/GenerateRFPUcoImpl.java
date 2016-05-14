package com.hsdc.epro.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsdc.epro.intf.control.GenerateRFPUco;
import com.hsdc.epro.intf.dao.GenerateRFPDao;
import com.hsdc.epro.intf.dto.GenerateRFPControlRequest;
import com.hsdc.epro.intf.dto.SuggestedSupplier;


/**
 * @author Ringle
 * @version 1.0
 * @created 30-�|��-2016 �U�� 02:01:24
 */
@Service
public class GenerateRFPUcoImpl implements GenerateRFPUco {
	@Autowired
	private GenerateRFPDao dao;

	public GenerateRFPUcoImpl(){

	}

	public void finalize() throws Throwable {

	}
	/**
	 * 
	 * @param yearlyMaterialPurchasing
	 */
	public String generateSuggestedSupplier(String yearlyMaterialPurchasing){
		String suggestedSupplier = generateSuggestedSupplierByBr1(yearlyMaterialPurchasing);
		notifySupplier(suggestedSupplier, yearlyMaterialPurchasing);
		return suggestedSupplier;
	}

	/**
	 * 
	 * @param yealyMaterialPurchasing
	 */
	private String generateSuggestedSupplierByBr1(String yealyMaterialPurchasing){
		ObjectMapper mapper = new ObjectMapper();
		try {
			List<SuggestedSupplier> suggestedSupplier 
			= new ArrayList<SuggestedSupplier>();
			List<GenerateRFPControlRequest> requests = mapper.readValue(yealyMaterialPurchasing, new TypeReference<List<GenerateRFPControlRequest>>(){});
			for(GenerateRFPControlRequest request: requests) {
				//     (1) 找出所有供應該物料的廠商，且其交易評等必須為’A’
				suggestedSupplier.addAll(getSuggestedSupplier(
						request.getMaterialNo(), "A", 5));
				//     (2)
				//若是符合(1)的條件的廠商小於5，則找出所有交易評等必須為’B’，且供應該物料的
				//廠商
				if (suggestedSupplier.size()<5)
					suggestedSupplier.addAll(getSuggestedSupplier(
							request.getMaterialNo(), "B", 
							5 - suggestedSupplier.size()));
				return mapper.writeValueAsString(suggestedSupplier);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	
	private List<SuggestedSupplier> getSuggestedSupplier(
			String materialNumber, String level,
			int maxCount)
	{
		List<SuggestedSupplier> suggestedSupplier 
			= dao.getSuggestedSupplier(materialNumber, level, maxCount);
		return suggestedSupplier;
	}

	/**
	 * 
	 * @param suggestedSupplier
	 * @param materialPurchasingPlan
	 */
	private void notifySupplier(String suggestedSupplier, String materialPurchasingPlan){

	}
}//end GenerateRFPUcoImpl