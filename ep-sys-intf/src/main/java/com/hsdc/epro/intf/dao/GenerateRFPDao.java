package com.hsdc.epro.intf.dao;

import java.util.List;

import com.hsdc.epro.intf.dto.SuggestedSupplier;

public interface GenerateRFPDao {
	public List<SuggestedSupplier> getSuggestedSupplier(String materialNumber, String level, int maxCount);
}
